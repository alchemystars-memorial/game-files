.class public final Lcom/dmm/android/lib/auth/service/JWTServiceImpl;
.super Ljava/lang/Object;
.source "JWTServiceImpl.kt"

# interfaces
.implements Lcom/dmm/android/lib/auth/service/JWTService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;,
        Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJWTServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JWTServiceImpl.kt\ncom/dmm/android/lib/auth/service/JWTServiceImpl\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,123:1\n100#2:124\n100#2:127\n32#3:125\n32#3:128\n80#4:126\n80#4:129\n*E\n*S KotlinDebug\n*F\n+ 1 JWTServiceImpl.kt\ncom/dmm/android/lib/auth/service/JWTServiceImpl\n*L\n42#1:124\n74#1:127\n42#1:125\n74#1:128\n42#1:126\n74#1:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0002\u0012\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J \u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/JWTServiceImpl;",
        "Lcom/dmm/android/lib/auth/service/JWTService;",
        "()V",
        "certificate",
        "Lcom/dmm/android/lib/auth/service/CertificateResult;",
        "jwt",
        "",
        "key",
        "decodeBase64",
        "str",
        "encodeBase64",
        "mac",
        "Ljavax/crypto/Mac;",
        "encodeHmac",
        "alg",
        "Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;",
        "parseIdToken",
        "Lcom/dmm/android/lib/auth/model/IDToken;",
        "Algorithm",
        "Companion",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Companion;

.field public static final FAIL_TO_CERTIFICATE:Ljava/lang/String; = "\u8a8d\u8a3c\u306b\u5931\u6557\u3057\u307e\u3057\u305f"

.field public static final INVALID_HEADER_JSON:Ljava/lang/String; = "\u30d8\u30c3\u30c0\u30fc\u306eJSON\u304c\u4e0d\u6b63\u306a\u5f62\u5f0f\u3067\u3059"

.field public static final NOT_ASSIGNED_JWT:Ljava/lang/String; = "JWT\u6587\u5b57\u5217\u304c\u672a\u6307\u5b9a\u3067\u3059"

.field public static final NOT_JWT_TYPE:Ljava/lang/String; = "\u6587\u5b57\u5217\u306e\u5f62\u5f0f\u304cJWT\u3067\u306f\u3042\u308a\u307e\u305b\u3093"

.field public static final NO_HEADER_ALGORITHM:Ljava/lang/String; = "\u30d8\u30c3\u30c0\u30fc\u306b\u30a2\u30eb\u30b4\u30ea\u30ba\u30e0\u304c\u3042\u308a\u307e\u305b\u3093"

.field private static final TAG:Ljava/lang/String;

.field public static final UNKNOWN_ALGORITHM:Ljava/lang/String; = "\u4e0d\u660e\u306a\u30a2\u30eb\u30b4\u30ea\u30ba\u30e0\u3067\u3059"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;->Companion:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Companion;

    const-string v0, "JWTServiceImpl"

    const-string v1, "JWTServiceImpl::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    const-string v0, "Base64.decode(\n        b\u2026or Base64.NO_WRAP\n      )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final encodeBase64(Ljava/lang/String;Ljavax/crypto/Mac;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const/16 p2, 0xb

    invoke-static {p1, p2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    const-string p2, "Base64.encode(\n        b\u2026or Base64.NO_WRAP\n      )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final encodeHmac(Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->getJavaName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    const-string p2, "Mac.getInstance(alg.javaName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/security/Key;

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p3, p1}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;->encodeBase64(Ljava/lang/String;Ljavax/crypto/Mac;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p1

    :catch_1
    move-exception p1

    sget-object p2, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public certificate(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/lib/auth/service/CertificateResult;
    .locals 12

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    new-instance p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    new-instance p2, Ljava/security/cert/CertificateException;

    const-string v0, "JWT\u6587\u5b57\u5217\u304c\u672a\u6307\u5b9a\u3067\u3059"

    invoke-direct {p2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult;

    return-object p1

    :cond_2
    const-string v2, "."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    new-instance p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    new-instance p2, Ljava/security/cert/CertificateException;

    const-string/jumbo v0, "\u6587\u5b57\u5217\u306e\u5f62\u5f0f\u304cJWT\u3067\u306f\u3042\u308a\u307e\u305b\u3093"

    invoke-direct {p2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult;

    return-object p1

    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v2}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    sget-object v6, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v6, Lkotlinx/serialization/StringFormat;

    invoke-interface {v6}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v7

    const-class v8, Ljava/util/Map;

    sget-object v9, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v9

    sget-object v10, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    if-eqz v7, :cond_e

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v6, v7, v5}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "alg"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, p1

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v0

    :goto_4
    if-eqz v6, :cond_7

    new-instance p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    new-instance p2, Ljava/security/cert/CertificateException;

    const-string/jumbo v0, "\u30d8\u30c3\u30c0\u30fc\u306b\u30a2\u30eb\u30b4\u30ea\u30ba\u30e0\u304c\u3042\u308a\u307e\u305b\u3093"

    invoke-direct {p2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult;

    return-object p1

    :cond_7
    sget-object v6, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->Companion:Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;

    invoke-virtual {v6, v5}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm$Companion;->getType(Ljava/lang/String;)Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;

    move-result-object v6

    sget-object v7, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v0, :cond_9

    if-eq v7, v3, :cond_8

    new-instance p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    new-instance p2, Ljava/security/cert/CertificateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4e0d\u660e\u306a\u30a2\u30eb\u30b4\u30ea\u30ba\u30e0\u3067\u3059:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult;

    goto :goto_5

    :cond_8
    sget-object p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Success;->INSTANCE:Lcom/dmm/android/lib/auth/service/CertificateResult$Success;

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult;

    :goto_5
    return-object p1

    :cond_9
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    move p1, v0

    :cond_b
    const-string/jumbo v3, "\u8a8d\u8a3c\u306b\u5931\u6557\u3057\u307e\u3057\u305f"

    if-eqz p1, :cond_c

    new-instance p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult;

    return-object p1

    :cond_c
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p2, p1}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;->encodeHmac(Lcom/dmm/android/lib/auth/service/JWTServiceImpl$Algorithm;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_d

    new-instance p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult;

    return-object p1

    :cond_d
    sget-object p1, Lcom/dmm/android/lib/auth/service/CertificateResult$Success;->INSTANCE:Lcom/dmm/android/lib/auth/service/CertificateResult$Success;

    check-cast p1, Lcom/dmm/android/lib/auth/service/CertificateResult;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    new-instance v0, Ljava/security/cert/CertificateException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p2, v0}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/dmm/android/lib/auth/service/CertificateResult;

    return-object p2

    :cond_e
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    new-instance v0, Ljava/security/cert/CertificateException;

    check-cast p1, Ljava/lang/Throwable;

    const-string/jumbo v1, "\u30d8\u30c3\u30c0\u30fc\u306eJSON\u304c\u4e0d\u6b63\u306a\u5f62\u5f0f\u3067\u3059"

    invoke-direct {v0, v1, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p2, v0}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/dmm/android/lib/auth/service/CertificateResult;

    return-object p2
.end method

.method public parseIdToken(Ljava/lang/String;)Lcom/dmm/android/lib/auth/model/IDToken;
    .locals 7

    const-string v0, "jwt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string p1, "."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/service/JWTServiceImpl;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v0, Lkotlinx/serialization/StringFormat;

    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    const-class v2, Lcom/dmm/android/lib/auth/model/IDToken;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dmm/android/lib/auth/model/IDToken;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
