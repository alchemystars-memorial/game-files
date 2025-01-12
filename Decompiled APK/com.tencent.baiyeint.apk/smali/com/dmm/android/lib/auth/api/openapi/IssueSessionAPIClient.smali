.class public final Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;
.super Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;
.source "IssueSessionAPIClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient<",
        "Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIssueSessionAPIClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IssueSessionAPIClient.kt\ncom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,46:1\n92#2:47\n32#3:48\n80#4:49\n*E\n*S KotlinDebug\n*F\n+ 1 IssueSessionAPIClient.kt\ncom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient\n*L\n42#1:47\n42#1:48\n42#1:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0014J(\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00072\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0010R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;",
        "Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;",
        "client",
        "Lcom/dmm/android/lib/auth/api/HttpClient;",
        "(Lcom/dmm/android/lib/auth/api/HttpClient;)V",
        "accessToken",
        "",
        "issueSessionIdRequest",
        "Lcom/dmm/android/lib/auth/api/json/IssueSessionIdRequest;",
        "createRequest",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "issueSessionId",
        "",
        "userId",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient$Companion;

.field private static final PATH_CONNECT_ISSUE_SESSION_ID:Ljava/lang/String; = "/connect/v1/issueSessionId"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private issueSessionIdRequest:Lcom/dmm/android/lib/auth/api/json/IssueSessionIdRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->Companion:Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;-><init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V

    return-void
.end method

.method public static synthetic issueSessionId$default(Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;Ljava/lang/String;Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    move-object p4, p3

    check-cast p4, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->issueSessionId(Ljava/lang/String;Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/dmm/android/lib/auth/api/HttpRequest;
    .locals 5

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->issueSessionIdRequest:Lcom/dmm/android/lib/auth/api/json/IssueSessionIdRequest;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/connect/v1/issueSessionId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;

    invoke-direct {v3, v2}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;-><init>(Ljava/net/URL;)V

    sget-object v2, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->POST:Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    invoke-virtual {v3, v2}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->method(Lcom/dmm/android/lib/auth/api/constant/HttpMethod;)V

    invoke-virtual {v3, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->authorizationBearer(Ljava/lang/String;)V

    sget-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->JSON:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    invoke-virtual {v3, v1}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->accept(Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;)V

    sget-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;->JSON:Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2, v4}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->contentType$default(Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;Lcom/dmm/android/lib/auth/api/constant/HttpMediaType;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v1, Lkotlinx/serialization/StringFormat;

    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const-class v4, Lcom/dmm/android/lib/auth/api/json/IssueSessionIdRequest;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, v0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->body(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/dmm/android/lib/auth/api/HttpRequestBuilder;->build()Lcom/dmm/android/lib/auth/api/HttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must set access_token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must set userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final issueSessionId(Ljava/lang/String;Ljava/lang/String;Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback<",
            "Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/json/IssueSessionIdRequest;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/api/json/IssueSessionIdRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->issueSessionIdRequest:Lcom/dmm/android/lib/auth/api/json/IssueSessionIdRequest;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->accessToken:Ljava/lang/String;

    check-cast p3, Lcom/dmm/android/lib/auth/api/HttpCallback;

    invoke-virtual {p0, p3}, Lcom/dmm/android/lib/auth/api/openapi/IssueSessionAPIClient;->connect(Lcom/dmm/android/lib/auth/api/HttpCallback;)V

    return-void
.end method
