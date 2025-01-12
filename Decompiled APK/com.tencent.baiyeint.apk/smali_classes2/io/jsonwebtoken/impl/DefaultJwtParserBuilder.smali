.class public Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;
.super Ljava/lang/Object;
.source "DefaultJwtParserBuilder.java"

# interfaces
.implements Lio/jsonwebtoken/JwtParserBuilder;


# static fields
.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8


# instance fields
.field private allowedClockSkewMillis:J

.field private base64UrlDecoder:Lio/jsonwebtoken/io/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/jsonwebtoken/io/Decoder<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private clock:Lio/jsonwebtoken/Clock;

.field private compressionCodecResolver:Lio/jsonwebtoken/CompressionCodecResolver;

.field private deserializer:Lio/jsonwebtoken/io/Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/jsonwebtoken/io/Deserializer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private expectedClaims:Lio/jsonwebtoken/Claims;

.field private key:Ljava/security/Key;

.field private keyBytes:[B

.field private signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;-><init>()V

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->compressionCodecResolver:Lio/jsonwebtoken/CompressionCodecResolver;

    sget-object v0, Lio/jsonwebtoken/io/Decoders;->BASE64URL:Lio/jsonwebtoken/io/Decoder;

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->base64UrlDecoder:Lio/jsonwebtoken/io/Decoder;

    new-instance v0, Lio/jsonwebtoken/impl/DefaultClaims;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/DefaultClaims;-><init>()V

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    sget-object v0, Lio/jsonwebtoken/impl/DefaultClock;->INSTANCE:Lio/jsonwebtoken/Clock;

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->clock:Lio/jsonwebtoken/Clock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->allowedClockSkewMillis:J

    return-void
.end method


# virtual methods
.method public base64UrlDecodeWith(Lio/jsonwebtoken/io/Decoder;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/jsonwebtoken/io/Decoder<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lio/jsonwebtoken/JwtParserBuilder;"
        }
    .end annotation

    const-string v0, "base64UrlDecoder cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->base64UrlDecoder:Lio/jsonwebtoken/io/Decoder;

    return-object p0
.end method

.method public build()Lio/jsonwebtoken/JwtParser;
    .locals 13

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->deserializer:Lio/jsonwebtoken/io/Deserializer;

    if-nez v0, :cond_0

    const-class v0, Lio/jsonwebtoken/io/Deserializer;

    invoke-static {v0}, Lio/jsonwebtoken/impl/lang/Services;->loadFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/io/Deserializer;

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->deserializer:Lio/jsonwebtoken/io/Deserializer;

    :cond_0
    new-instance v0, Lio/jsonwebtoken/impl/ImmutableJwtParser;

    new-instance v12, Lio/jsonwebtoken/impl/DefaultJwtParser;

    iget-object v2, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;

    iget-object v3, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->key:Ljava/security/Key;

    iget-object v4, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->keyBytes:[B

    iget-object v5, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->clock:Lio/jsonwebtoken/Clock;

    iget-wide v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->allowedClockSkewMillis:J

    iget-object v8, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    iget-object v9, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->base64UrlDecoder:Lio/jsonwebtoken/io/Decoder;

    iget-object v10, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->deserializer:Lio/jsonwebtoken/io/Deserializer;

    iget-object v11, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->compressionCodecResolver:Lio/jsonwebtoken/CompressionCodecResolver;

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lio/jsonwebtoken/impl/DefaultJwtParser;-><init>(Lio/jsonwebtoken/SigningKeyResolver;Ljava/security/Key;[BLio/jsonwebtoken/Clock;JLio/jsonwebtoken/Claims;Lio/jsonwebtoken/io/Decoder;Lio/jsonwebtoken/io/Deserializer;Lio/jsonwebtoken/CompressionCodecResolver;)V

    invoke-direct {v0, v12}, Lio/jsonwebtoken/impl/ImmutableJwtParser;-><init>(Lio/jsonwebtoken/JwtParser;)V

    return-object v0
.end method

.method public deserializeJsonWith(Lio/jsonwebtoken/io/Deserializer;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/jsonwebtoken/io/Deserializer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Lio/jsonwebtoken/JwtParserBuilder;"
        }
    .end annotation

    const-string v0, "deserializer cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->deserializer:Lio/jsonwebtoken/io/Deserializer;

    return-object p0
.end method

.method public require(Ljava/lang/String;Ljava/lang/Object;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 2

    const-string v0, "claim name cannot be null or empty."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value cannot be null for claim name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1, p2}, Lio/jsonwebtoken/Claims;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public requireAudience(Ljava/lang/String;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setAudience(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireExpiration(Ljava/util/Date;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireId(Ljava/lang/String;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setId(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireIssuer(Ljava/lang/String;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireSubject(Ljava/lang/String;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setSubject(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public setAllowedClockSkewSeconds(J)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->allowedClockSkewMillis:J

    return-object p0
.end method

.method public setClock(Lio/jsonwebtoken/Clock;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    const-string v0, "Clock instance cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->clock:Lio/jsonwebtoken/Clock;

    return-object p0
.end method

.method public setCompressionCodecResolver(Lio/jsonwebtoken/CompressionCodecResolver;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    const-string v0, "compressionCodecResolver cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->compressionCodecResolver:Lio/jsonwebtoken/CompressionCodecResolver;

    return-object p0
.end method

.method public setSigningKey(Ljava/lang/String;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    const-string v0, "signing key cannot be null or empty."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lio/jsonwebtoken/io/Decoders;->BASE64:Lio/jsonwebtoken/io/Decoder;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/io/Decoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->keyBytes:[B

    return-object p0
.end method

.method public setSigningKey(Ljava/security/Key;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    const-string v0, "signing key cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->key:Ljava/security/Key;

    return-object p0
.end method

.method public setSigningKey([B)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    const-string v0, "signing key cannot be null or empty."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notEmpty([BLjava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->keyBytes:[B

    return-object p0
.end method

.method public setSigningKeyResolver(Lio/jsonwebtoken/SigningKeyResolver;)Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    const-string v0, "SigningKeyResolver cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParserBuilder;->signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;

    return-object p0
.end method
