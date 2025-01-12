.class public final enum Lio/jsonwebtoken/SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "SignatureAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/jsonwebtoken/SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum ES256:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum ES384:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum ES512:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum HS256:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum HS384:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum HS512:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum NONE:Lio/jsonwebtoken/SignatureAlgorithm;

.field private static final PREFERRED_EC_ALGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/jsonwebtoken/SignatureAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFERRED_HMAC_ALGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/jsonwebtoken/SignatureAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PS256:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum PS384:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum PS512:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum RS256:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum RS384:Lio/jsonwebtoken/SignatureAlgorithm;

.field public static final enum RS512:Lio/jsonwebtoken/SignatureAlgorithm;


# instance fields
.field private final description:Ljava/lang/String;

.field private final digestLength:I

.field private final familyName:Ljava/lang/String;

.field private final jcaName:Ljava/lang/String;

.field private final jdkStandard:Z

.field private final minKeyLength:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v10, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    const-string v4, "No digital signature or MAC performed"

    const-string v5, "None"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v10, Lio/jsonwebtoken/SignatureAlgorithm;->NONE:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v0, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v12, "HS256"

    const/4 v13, 0x1

    const-string v14, "HS256"

    const-string v15, "HMAC using SHA-256"

    const-string v16, "HMAC"

    const-string v17, "HmacSHA256"

    const/16 v18, 0x1

    const/16 v19, 0x100

    const/16 v20, 0x100

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->HS256:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v1, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v22, "HS384"

    const/16 v23, 0x2

    const-string v24, "HS384"

    const-string v25, "HMAC using SHA-384"

    const-string v26, "HMAC"

    const-string v27, "HmacSHA384"

    const/16 v28, 0x1

    const/16 v29, 0x180

    const/16 v30, 0x180

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v30}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->HS384:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v2, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v12, "HS512"

    const/4 v13, 0x3

    const-string v14, "HS512"

    const-string v15, "HMAC using SHA-512"

    const-string v16, "HMAC"

    const-string v17, "HmacSHA512"

    const/16 v19, 0x200

    const/16 v20, 0x200

    move-object v11, v2

    invoke-direct/range {v11 .. v20}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v2, Lio/jsonwebtoken/SignatureAlgorithm;->HS512:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v3, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v22, "RS256"

    const/16 v23, 0x4

    const-string v24, "RS256"

    const-string v25, "RSASSA-PKCS-v1_5 using SHA-256"

    const-string v26, "RSA"

    const-string v27, "SHA256withRSA"

    const/16 v29, 0x100

    const/16 v30, 0x800

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v30}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v3, Lio/jsonwebtoken/SignatureAlgorithm;->RS256:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v4, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v12, "RS384"

    const/4 v13, 0x5

    const-string v14, "RS384"

    const-string v15, "RSASSA-PKCS-v1_5 using SHA-384"

    const-string v16, "RSA"

    const-string v17, "SHA384withRSA"

    const/16 v19, 0x180

    const/16 v20, 0x800

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v4, Lio/jsonwebtoken/SignatureAlgorithm;->RS384:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v5, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v22, "RS512"

    const/16 v23, 0x6

    const-string v24, "RS512"

    const-string v25, "RSASSA-PKCS-v1_5 using SHA-512"

    const-string v26, "RSA"

    const-string v27, "SHA512withRSA"

    const/16 v29, 0x200

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v30}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v5, Lio/jsonwebtoken/SignatureAlgorithm;->RS512:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v6, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v12, "ES256"

    const/4 v13, 0x7

    const-string v14, "ES256"

    const-string v15, "ECDSA using P-256 and SHA-256"

    const-string v16, "ECDSA"

    const-string v17, "SHA256withECDSA"

    const/16 v19, 0x100

    const/16 v20, 0x100

    move-object v11, v6

    invoke-direct/range {v11 .. v20}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v6, Lio/jsonwebtoken/SignatureAlgorithm;->ES256:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v7, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v22, "ES384"

    const/16 v23, 0x8

    const-string v24, "ES384"

    const-string v25, "ECDSA using P-384 and SHA-384"

    const-string v26, "ECDSA"

    const-string v27, "SHA384withECDSA"

    const/16 v29, 0x180

    const/16 v30, 0x180

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v30}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v7, Lio/jsonwebtoken/SignatureAlgorithm;->ES384:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v8, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v12, "ES512"

    const/16 v13, 0x9

    const-string v14, "ES512"

    const-string v15, "ECDSA using P-521 and SHA-512"

    const-string v16, "ECDSA"

    const-string v17, "SHA512withECDSA"

    const/16 v19, 0x200

    const/16 v20, 0x209

    move-object v11, v8

    invoke-direct/range {v11 .. v20}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v8, Lio/jsonwebtoken/SignatureAlgorithm;->ES512:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v9, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v22, "PS256"

    const/16 v23, 0xa

    const-string v24, "PS256"

    const-string v25, "RSASSA-PSS using SHA-256 and MGF1 with SHA-256"

    const-string v26, "RSA"

    const-string v27, "RSASSA-PSS"

    const/16 v28, 0x0

    const/16 v29, 0x100

    const/16 v30, 0x800

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v30}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v9, Lio/jsonwebtoken/SignatureAlgorithm;->PS256:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v21, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v12, "PS384"

    const/16 v13, 0xb

    const-string v14, "PS384"

    const-string v15, "RSASSA-PSS using SHA-384 and MGF1 with SHA-384"

    const-string v16, "RSA"

    const-string v17, "RSASSA-PSS"

    const/16 v18, 0x0

    const/16 v19, 0x180

    const/16 v20, 0x800

    move-object/from16 v11, v21

    invoke-direct/range {v11 .. v20}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v21, Lio/jsonwebtoken/SignatureAlgorithm;->PS384:Lio/jsonwebtoken/SignatureAlgorithm;

    new-instance v11, Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v23, "PS512"

    const/16 v24, 0xc

    const-string v25, "PS512"

    const-string v26, "RSASSA-PSS using SHA-512 and MGF1 with SHA-512"

    const-string v27, "RSA"

    const-string v28, "RSASSA-PSS"

    const/16 v29, 0x0

    const/16 v30, 0x200

    const/16 v31, 0x800

    move-object/from16 v22, v11

    invoke-direct/range {v22 .. v31}, Lio/jsonwebtoken/SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    sput-object v11, Lio/jsonwebtoken/SignatureAlgorithm;->PS512:Lio/jsonwebtoken/SignatureAlgorithm;

    const/16 v12, 0xd

    new-array v12, v12, [Lio/jsonwebtoken/SignatureAlgorithm;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v10, 0x1

    aput-object v0, v12, v10

    const/4 v14, 0x2

    aput-object v1, v12, v14

    const/4 v15, 0x3

    aput-object v2, v12, v15

    const/16 v16, 0x4

    aput-object v3, v12, v16

    const/4 v3, 0x5

    aput-object v4, v12, v3

    const/4 v3, 0x6

    aput-object v5, v12, v3

    const/4 v3, 0x7

    aput-object v6, v12, v3

    const/16 v3, 0x8

    aput-object v7, v12, v3

    const/16 v3, 0x9

    aput-object v8, v12, v3

    const/16 v3, 0xa

    aput-object v9, v12, v3

    const/16 v3, 0xb

    aput-object v21, v12, v3

    const/16 v3, 0xc

    aput-object v11, v12, v3

    sput-object v12, Lio/jsonwebtoken/SignatureAlgorithm;->$VALUES:[Lio/jsonwebtoken/SignatureAlgorithm;

    new-array v3, v15, [Lio/jsonwebtoken/SignatureAlgorithm;

    aput-object v2, v3, v13

    aput-object v1, v3, v10

    aput-object v0, v3, v14

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->PREFERRED_HMAC_ALGS:Ljava/util/List;

    new-array v0, v15, [Lio/jsonwebtoken/SignatureAlgorithm;

    aput-object v8, v0, v13

    aput-object v7, v0, v10

    aput-object v6, v0, v14

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->PREFERRED_EC_ALGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/jsonwebtoken/SignatureAlgorithm;->value:Ljava/lang/String;

    iput-object p4, p0, Lio/jsonwebtoken/SignatureAlgorithm;->description:Ljava/lang/String;

    iput-object p5, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    iput-object p6, p0, Lio/jsonwebtoken/SignatureAlgorithm;->jcaName:Ljava/lang/String;

    iput-boolean p7, p0, Lio/jsonwebtoken/SignatureAlgorithm;->jdkStandard:Z

    iput p8, p0, Lio/jsonwebtoken/SignatureAlgorithm;->digestLength:I

    iput p9, p0, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    return-void
.end method

.method private assertValid(Ljava/security/Key;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->NONE:Lio/jsonwebtoken/SignatureAlgorithm;

    if-eq p0, v0, :cond_f

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->isHmac()Z

    move-result v0

    const-string v1, " key\'s size is "

    const-string v2, " algorithm.  The JWT "

    const-string v3, ".  See "

    const-string v4, " class\'s "

    const-string v5, " "

    const-string v6, "The "

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_5

    check-cast p1, Ljavax/crypto/SecretKey;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v5, Lio/jsonwebtoken/SignatureAlgorithm;->HS256:Lio/jsonwebtoken/SignatureAlgorithm;

    iget-object v5, v5, Lio/jsonwebtoken/SignatureAlgorithm;->jcaName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lio/jsonwebtoken/SignatureAlgorithm;->HS384:Lio/jsonwebtoken/SignatureAlgorithm;

    iget-object v5, v5, Lio/jsonwebtoken/SignatureAlgorithm;->jcaName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lio/jsonwebtoken/SignatureAlgorithm;->HS512:Lio/jsonwebtoken/SignatureAlgorithm;

    iget-object v5, v5, Lio/jsonwebtoken/SignatureAlgorithm;->jcaName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/jsonwebtoken/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key\'s algorithm \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not equal a valid HmacSHA* algorithm name and cannot be used with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    array-length p1, v0

    mul-int/lit8 p1, p1, 0x8

    iget v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    if-lt p1, v0, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits which "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is not secure enough for the "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "JWA Specification (RFC 7518, Section 3.2) states that keys used with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " MUST have a "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "size >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits (the key size must be greater than or equal to the hash "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "output size).  Consider using the "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lio/jsonwebtoken/security/Keys;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'secretKeyFor(SignatureAlgorithm."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\' method to create a key guaranteed to be "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "secure enough for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "https://tools.ietf.org/html/rfc7518#section-3.2 for more information."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/jsonwebtoken/security/WeakKeyException;

    invoke-direct {p2, p1}, Lio/jsonwebtoken/security/WeakKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Lio/jsonwebtoken/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key\'s algorithm cannot be null."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lio/jsonwebtoken/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key\'s encoded bytes cannot be null."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " keys must be SecretKey instances."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/jsonwebtoken/security/InvalidKeyException;

    invoke-direct {p2, p1}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    if-eqz p2, :cond_8

    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " signing keys must be PrivateKey instances."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/jsonwebtoken/security/InvalidKeyException;

    invoke-direct {p2, p1}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->isEllipticCurve()Z

    move-result v0

    const-string v7, "to be secure enough for "

    const-string v8, ")\' method to create a key pair guaranteed "

    const-string v9, "\'keyPairFor(SignatureAlgorithm."

    const-string v10, " bits.  Consider using the "

    const-string v11, " MUST have a size >= "

    if-eqz v0, :cond_b

    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/security/interfaces/ECKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iget v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    if-lt p1, v0, :cond_9

    goto/16 :goto_3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key\'s size (ECParameterSpec order) is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits which is not secure enough for the "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "JWA Specification (RFC 7518, Section 3.4) states that keys used with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lio/jsonwebtoken/security/Keys;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "https://tools.ietf.org/html/rfc7518#section-3.4 for more information."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/jsonwebtoken/security/WeakKeyException;

    invoke-direct {p2, p1}, Lio/jsonwebtoken/security/WeakKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " keys must be ECKey instances."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/jsonwebtoken/security/InvalidKeyException;

    invoke-direct {p2, p1}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    instance-of v0, p1, Ljava/security/interfaces/RSAKey;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/security/interfaces/RSAKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iget v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    if-ge p1, v0, :cond_d

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "P"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "3.5"

    goto :goto_2

    :cond_c
    const-string v0, "3.3"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits which is not secure "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "enough for the "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " algorithm.  The JWT JWA Specification (RFC 7518, Section "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") states that keys used with "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lio/jsonwebtoken/security/Keys;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "https://tools.ietf.org/html/rfc7518#section-"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for more information."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/jsonwebtoken/security/WeakKeyException;

    invoke-direct {p2, p1}, Lio/jsonwebtoken/security/WeakKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    :goto_3
    return-void

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->keyType(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " keys must be RSAKey instances."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/jsonwebtoken/security/InvalidKeyException;

    invoke-direct {p2, p1}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    new-instance p1, Lio/jsonwebtoken/security/InvalidKeyException;

    const-string p2, "The \'NONE\' signature algorithm does not support cryptographic keys."

    invoke-direct {p1, p2}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static forName(Ljava/lang/String;)Lio/jsonwebtoken/SignatureAlgorithm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/security/SignatureException;
        }
    .end annotation

    invoke-static {}, Lio/jsonwebtoken/SignatureAlgorithm;->values()[Lio/jsonwebtoken/SignatureAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/jsonwebtoken/SignatureAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lio/jsonwebtoken/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported signature algorithm \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/jsonwebtoken/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forSigningKey(Ljava/security/Key;)Lio/jsonwebtoken/SignatureAlgorithm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p0, :cond_b

    instance-of v0, p0, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    instance-of v1, p0, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT standard signing algorithms require either 1) a SecretKey for HMAC-SHA algorithms or 2) a private RSAKey for RSA algorithms or 3) a private ECKey for Elliptic Curve algorithms.  The specified key is of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/jsonwebtoken/security/InvalidKeyException;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string v1, "information."

    if-eqz v0, :cond_4

    check-cast p0, Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lio/jsonwebtoken/lang/Arrays;->length([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    sget-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->PREFERRED_HMAC_ALGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/jsonwebtoken/SignatureAlgorithm;

    iget v3, v2, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    if-lt p0, v3, :cond_2

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified SecretKey is not strong enough to be used with JWT HMAC signature algorithms.  The JWT specification requires HMAC keys to be >= 256 bits long.  The specified key is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bits.  See https://tools.ietf.org/html/rfc7518#section-3.2 for more "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/jsonwebtoken/security/WeakKeyException;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/security/WeakKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v0, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v2, 0x1000

    if-lt v0, v2, :cond_5

    sget-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->RS512:Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-virtual {v0, p0}, Lio/jsonwebtoken/SignatureAlgorithm;->assertValidSigningKey(Ljava/security/Key;)V

    return-object v0

    :cond_5
    const/16 v2, 0xc00

    if-lt v0, v2, :cond_6

    sget-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->RS384:Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-virtual {v0, p0}, Lio/jsonwebtoken/SignatureAlgorithm;->assertValidSigningKey(Ljava/security/Key;)V

    return-object v0

    :cond_6
    sget-object v2, Lio/jsonwebtoken/SignatureAlgorithm;->RS256:Lio/jsonwebtoken/SignatureAlgorithm;

    iget v3, v2, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    if-lt v0, v3, :cond_7

    invoke-virtual {v2, p0}, Lio/jsonwebtoken/SignatureAlgorithm;->assertValidSigningKey(Ljava/security/Key;)V

    return-object v2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified RSA signing key is not strong enough to be used with JWT RSA signature algorithms.  The JWT specification requires RSA keys to be >= 2048 bits long.  The specified RSA key is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bits.  See https://tools.ietf.org/html/rfc7518#section-3.3 for more "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/jsonwebtoken/security/WeakKeyException;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/security/WeakKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->PREFERRED_EC_ALGS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/jsonwebtoken/SignatureAlgorithm;

    iget v3, v2, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    if-lt v0, v3, :cond_9

    invoke-virtual {v2, p0}, Lio/jsonwebtoken/SignatureAlgorithm;->assertValidSigningKey(Ljava/security/Key;)V

    return-object v2

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified Elliptic Curve signing key is not strong enough to be used with JWT ECDSA signature algorithms.  The JWT specification requires ECDSA keys to be >= 256 bits long.  The specified ECDSA key is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bits.  See "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "https://tools.ietf.org/html/rfc7518#section-3.4 for more information."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/jsonwebtoken/security/WeakKeyException;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/security/WeakKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance p0, Lio/jsonwebtoken/security/InvalidKeyException;

    const-string v0, "Key argument cannot be null."

    invoke-direct {p0, v0}, Lio/jsonwebtoken/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static keyType(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "signing"

    goto :goto_0

    :cond_0
    const-string p0, "verification"

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/jsonwebtoken/SignatureAlgorithm;
    .locals 1

    const-class v0, Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/jsonwebtoken/SignatureAlgorithm;

    return-object p0
.end method

.method public static values()[Lio/jsonwebtoken/SignatureAlgorithm;
    .locals 1

    sget-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->$VALUES:[Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-virtual {v0}, [Lio/jsonwebtoken/SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/jsonwebtoken/SignatureAlgorithm;

    return-object v0
.end method


# virtual methods
.method public assertValidSigningKey(Ljava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/jsonwebtoken/SignatureAlgorithm;->assertValid(Ljava/security/Key;Z)V

    return-void
.end method

.method public assertValidVerificationKey(Ljava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/jsonwebtoken/SignatureAlgorithm;->assertValid(Ljava/security/Key;Z)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public getJcaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->jcaName:Ljava/lang/String;

    return-object v0
.end method

.method public getMinKeyLength()I
    .locals 1

    iget v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->minKeyLength:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isEllipticCurve()Z
    .locals 2

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    const-string v1, "ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHmac()Z
    .locals 2

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    const-string v1, "HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isJdkStandard()Z
    .locals 1

    iget-boolean v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->jdkStandard:Z

    return v0
.end method

.method public isRsa()Z
    .locals 2

    iget-object v0, p0, Lio/jsonwebtoken/SignatureAlgorithm;->familyName:Ljava/lang/String;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
