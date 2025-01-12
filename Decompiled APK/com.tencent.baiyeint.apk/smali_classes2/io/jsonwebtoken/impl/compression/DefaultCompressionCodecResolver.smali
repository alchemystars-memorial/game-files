.class public Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;
.super Ljava/lang/Object;
.source "DefaultCompressionCodecResolver.java"

# interfaces
.implements Lio/jsonwebtoken/CompressionCodecResolver;


# static fields
.field private static final MISSING_COMPRESSION_MESSAGE:Ljava/lang/String; = "Unable to find an implementation for compression algorithm [%s] using java.util.ServiceLoader. Ensure you include a backing implementation .jar in the classpath, for example jjwt-impl.jar, or your own .jar for custom implementations."


# instance fields
.field private final codecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/jsonwebtoken/CompressionCodec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lio/jsonwebtoken/CompressionCodec;

    invoke-static {v1}, Lio/jsonwebtoken/impl/lang/Services;->loadAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/jsonwebtoken/CompressionCodec;

    invoke-interface {v2}, Lio/jsonwebtoken/CompressionCodec;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/jsonwebtoken/CompressionCodecs;->DEFLATE:Lio/jsonwebtoken/CompressionCodec;

    invoke-interface {v1}, Lio/jsonwebtoken/CompressionCodec;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/jsonwebtoken/CompressionCodecs;->DEFLATE:Lio/jsonwebtoken/CompressionCodec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/jsonwebtoken/CompressionCodecs;->GZIP:Lio/jsonwebtoken/CompressionCodec;

    invoke-interface {v1}, Lio/jsonwebtoken/CompressionCodec;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/jsonwebtoken/CompressionCodecs;->GZIP:Lio/jsonwebtoken/CompressionCodec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;->codecs:Ljava/util/Map;

    return-void
.end method

.method private byName(Ljava/lang/String;)Lio/jsonwebtoken/CompressionCodec;
    .locals 3

    const-string v0, "\'name\' must not be empty"

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;->codecs:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/CompressionCodec;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lio/jsonwebtoken/CompressionException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Unable to find an implementation for compression algorithm [%s] using java.util.ServiceLoader. Ensure you include a backing implementation .jar in the classpath, for example jjwt-impl.jar, or your own .jar for custom implementations."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/jsonwebtoken/CompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAlgorithmFromHeader(Lio/jsonwebtoken/Header;)Ljava/lang/String;
    .locals 1

    const-string v0, "header cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/jsonwebtoken/Header;->getCompressionAlgorithm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public resolveCompressionCodec(Lio/jsonwebtoken/Header;)Lio/jsonwebtoken/CompressionCodec;
    .locals 1

    invoke-direct {p0, p1}, Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;->getAlgorithmFromHeader(Lio/jsonwebtoken/Header;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/jsonwebtoken/lang/Strings;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;->byName(Ljava/lang/String;)Lio/jsonwebtoken/CompressionCodec;

    move-result-object p1

    return-object p1
.end method
