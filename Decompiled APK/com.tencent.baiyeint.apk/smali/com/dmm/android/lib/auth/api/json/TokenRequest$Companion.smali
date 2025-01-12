.class public final Lcom/dmm/android/lib/auth/api/json/TokenRequest$Companion;
.super Ljava/lang/Object;
.source "TokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/api/json/TokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/dmm/android/lib/auth/api/json/TokenRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x7

    new-array v3, v2, [Lkotlin/reflect/KClass;

    const-class v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$AuthorizationCode;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Password;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$ClientCredential;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$RefreshToken;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-class v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$OneTimeCode;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const-class v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$ExchangeToken;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$AuthorizationCode$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/TokenRequest$AuthorizationCode$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    aput-object v4, v2, v5

    sget-object v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Password$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/TokenRequest$Password$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    aput-object v4, v2, v6

    sget-object v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$ClientCredential$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/TokenRequest$ClientCredential$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    aput-object v4, v2, v7

    sget-object v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$RefreshToken$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/TokenRequest$RefreshToken$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    aput-object v4, v2, v8

    sget-object v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/TokenRequest$Administrator$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    aput-object v4, v2, v9

    sget-object v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$OneTimeCode$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/TokenRequest$OneTimeCode$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    aput-object v4, v2, v10

    sget-object v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest$ExchangeToken$$serializer;->INSTANCE:Lcom/dmm/android/lib/auth/api/json/TokenRequest$ExchangeToken$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    aput-object v4, v2, v11

    const-string v4, "com.dmm.android.lib.auth.api.json.TokenRequest"

    invoke-direct {v0, v4, v1, v3, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
