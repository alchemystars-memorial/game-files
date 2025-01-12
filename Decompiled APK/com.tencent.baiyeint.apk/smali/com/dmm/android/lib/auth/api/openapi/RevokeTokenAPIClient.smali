.class public final Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;
.super Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;
.source "RevokeTokenAPIClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient<",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIEmptyResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0014J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\rR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIEmptyResponse;",
        "client",
        "Lcom/dmm/android/lib/auth/api/HttpClient;",
        "(Lcom/dmm/android/lib/auth/api/HttpClient;)V",
        "accessToken",
        "",
        "createRequest",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "revokeAccessToken",
        "",
        "callback",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient$Companion;

.field private static final PATH_AUTHORIZATION_REVOKE:Ljava/lang/String; = "/authorization/v1/token/revoke"


# instance fields
.field private accessToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;->Companion:Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;-><init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V

    return-void
.end method

.method public static synthetic revokeAccessToken$default(Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;->revokeAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/dmm/android/lib/auth/api/HttpRequest;
    .locals 5

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/authorization/v1/token/revoke"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;->accessToken:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v3, "accessToken"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;

    invoke-direct {v2, v0}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;-><init>(Ljava/net/URL;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->POST:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    invoke-virtual {v2, v0}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->method(Lcom/dmm/android/lib/auth/api/constant/HttpMethod;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->JSON:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    invoke-virtual {v2, v0}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->accept(Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;)V

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->FORM:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->contentType$default(Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->body(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->build()Lcom/dmm/android/lib/auth/api/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final revokeAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback<",
            "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIEmptyResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;->accessToken:Ljava/lang/String;

    check-cast p2, Lcom/dmm/android/lib/auth/api/HttpCallback;

    invoke-virtual {p0, p2}, Lcom/dmm/android/lib/auth/api/openapi/RevokeTokenAPIClient;->connect(Lcom/dmm/android/lib/auth/api/HttpCallback;)V

    return-void
.end method
