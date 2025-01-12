.class public final Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;
.super Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;
.source "TokenAPIClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient<",
        "Lcom/dmm/android/lib/auth/api/json/TokenResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenAPIClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenAPIClient.kt\ncom/dmm/android/lib/auth/api/openapi/TokenAPIClient\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,52:1\n92#2:53\n32#3:54\n80#4:55\n*E\n*S KotlinDebug\n*F\n+ 1 TokenAPIClient.kt\ncom/dmm/android/lib/auth/api/openapi/TokenAPIClient\n*L\n48#1:53\n48#1:54\n48#1:55\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0014J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fJ \u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\r2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fJ \u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;",
        "Lcom/dmm/android/lib/auth/api/json/TokenResponse;",
        "client",
        "Lcom/dmm/android/lib/auth/api/HttpClient;",
        "(Lcom/dmm/android/lib/auth/api/HttpClient;)V",
        "tokenRequest",
        "Lcom/dmm/android/lib/auth/api/json/TokenRequest;",
        "createRequest",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "exchangeToken",
        "",
        "accessToken",
        "",
        "callback",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;",
        "issueAccessToken",
        "authCode",
        "refreshToken",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient$Companion;

.field private static final PATH_CONNECT_TOKEN:Ljava/lang/String; = "/connect/v1/token"


# instance fields
.field private tokenRequest:Lcom/dmm/android/lib/auth/api/json/TokenRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->Companion:Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;-><init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V

    return-void
.end method

.method public static synthetic exchangeToken$default(Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->exchangeToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method

.method public static synthetic issueAccessToken$default(Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method

.method public static synthetic refreshToken$default(Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->refreshToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/dmm/android/lib/auth/api/HttpRequest;
    .locals 5

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->tokenRequest:Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/connect/v1/token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;

    invoke-direct {v2, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;-><init>(Ljava/net/URL;)V

    sget-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->POST:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    invoke-virtual {v2, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->method(Lcom/dmm/android/lib/auth/api/constant/HttpMethod;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->getAuthKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->authorizationBasic(Ljava/lang/String;)V

    sget-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->JSON:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    invoke-virtual {v2, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->accept(Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;)V

    sget-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->JSON:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->contentType$default(Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient$createRequest$1$1;->INSTANCE:Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient$createRequest$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    invoke-static {v4, v1, v3, v4}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    const-class v4, Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v3, v0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->body(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->build()Lcom/dmm/android/lib/auth/api/HttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must select GrantType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final exchangeToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback<",
            "Lcom/dmm/android/lib/auth/api/json/TokenResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$ExchangeToken;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/api/json/TokenRequest$ExchangeToken;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->tokenRequest:Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    check-cast p2, Lcom/dmm/android/lib/auth/api/HttpCallback;

    invoke-virtual {p0, p2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->connect(Lcom/dmm/android/lib/auth/api/HttpCallback;)V

    return-void
.end method

.method public final issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback<",
            "Lcom/dmm/android/lib/auth/api/json/TokenResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "authCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$AuthorizationCode;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/dmm/android/lib/auth/api/json/TokenRequest$AuthorizationCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->tokenRequest:Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    check-cast p2, Lcom/dmm/android/lib/auth/api/HttpCallback;

    invoke-virtual {p0, p2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->connect(Lcom/dmm/android/lib/auth/api/HttpCallback;)V

    return-void
.end method

.method public final refreshToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback<",
            "Lcom/dmm/android/lib/auth/api/json/TokenResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest$RefreshToken;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/dmm/android/lib/auth/api/json/TokenRequest$RefreshToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->tokenRequest:Lcom/dmm/android/lib/auth/api/json/TokenRequest;

    check-cast p2, Lcom/dmm/android/lib/auth/api/HttpCallback;

    invoke-virtual {p0, p2}, Lcom/dmm/android/lib/auth/api/openapi/TokenAPIClient;->connect(Lcom/dmm/android/lib/auth/api/HttpCallback;)V

    return-void
.end method
