.class public abstract Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;
.super Lcom/dmm/android/lib/auth/api/APIClient;
.source "DMMOpenAPIClient.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;",
        ">",
        "Lcom/dmm/android/lib/auth/api/APIClient<",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00040\u0003B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0012\u001a\u00020\tH\u0004R\u0014\u0010\u0008\u001a\u00020\t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\tX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;",
        "T",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;",
        "Lcom/dmm/android/lib/auth/api/APIClient;",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;",
        "client",
        "Lcom/dmm/android/lib/auth/api/HttpClient;",
        "(Lcom/dmm/android/lib/auth/api/HttpClient;)V",
        "baseUrl",
        "",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "clientId",
        "clientSecret",
        "config",
        "Lcom/dmm/android/lib/auth/Config;",
        "redirectUri",
        "getRedirectUri",
        "getAuthKey",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final config:Lcom/dmm/android/lib/auth/Config;

.field private final redirectUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/api/APIClient;-><init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V

    sget-object p1, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/service/ConfigService;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;->config:Lcom/dmm/android/lib/auth/Config;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/Config;->getClientID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;->clientId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/Config;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;->clientSecret:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/Config;->getRedirectUri()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;->redirectUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getAuthKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Base64.encodeToString(au\u2026eArray(), Base64.NO_WRAP)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getBaseUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://gw.dmmapis.com"

    return-object v0
.end method

.method protected final getRedirectUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPIClient;->redirectUri:Ljava/lang/String;

    return-object v0
.end method
