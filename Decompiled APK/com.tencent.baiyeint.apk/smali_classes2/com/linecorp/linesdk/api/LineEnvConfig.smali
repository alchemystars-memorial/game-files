.class public abstract Lcom/linecorp/linesdk/api/LineEnvConfig;
.super Ljava/lang/Object;
.source "LineEnvConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/linecorp/linesdk/api/LineEnvConfig;",
        "",
        "()V",
        "apiServerBaseUri",
        "",
        "getApiServerBaseUri",
        "()Ljava/lang/String;",
        "openIdDiscoveryDocumentUrl",
        "getOpenIdDiscoveryDocumentUrl",
        "webLoginPageUrl",
        "getWebLoginPageUrl",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final apiServerBaseUri:Ljava/lang/String;

.field private final openIdDiscoveryDocumentUrl:Ljava/lang/String;

.field private final webLoginPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://api.line.me/"

    iput-object v0, p0, Lcom/linecorp/linesdk/api/LineEnvConfig;->apiServerBaseUri:Ljava/lang/String;

    const-string v0, "https://access.line.me/.well-known/openid-configuration"

    iput-object v0, p0, Lcom/linecorp/linesdk/api/LineEnvConfig;->openIdDiscoveryDocumentUrl:Ljava/lang/String;

    const-string v0, "https://access.line.me/oauth2/v2.1/login"

    iput-object v0, p0, Lcom/linecorp/linesdk/api/LineEnvConfig;->webLoginPageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiServerBaseUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/LineEnvConfig;->apiServerBaseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenIdDiscoveryDocumentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/LineEnvConfig;->openIdDiscoveryDocumentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebLoginPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/LineEnvConfig;->webLoginPageUrl:Ljava/lang/String;

    return-object v0
.end method
