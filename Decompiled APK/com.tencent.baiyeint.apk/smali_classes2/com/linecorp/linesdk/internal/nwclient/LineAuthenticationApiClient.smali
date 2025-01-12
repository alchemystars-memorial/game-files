.class public Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;
.super Ljava/lang/Object;
.source "LineAuthenticationApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$RefreshTokenResultParser;,
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$VerificationResultParser;,
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;
    }
.end annotation


# static fields
.field private static final AVAILABLE_TOKEN_TYPE:Ljava/lang/String; = "Bearer"

.field private static final BASE_PATH_OAUTH_V21_API:Ljava/lang/String; = "oauth2/v2.1"

.field private static final JWK_SET_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/JWKSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_RESULT_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "*>;"
        }
    .end annotation
.end field

.field private static final OPEN_ID_DISCOVERY_DOCUMENT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFRESH_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/RefreshTokenResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LineAuthApiClient"

.field private static final VERIFICATION_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ISSUE_ACCESS_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;",
            ">;"
        }
    .end annotation
.end field

.field private final apiBaseUrl:Landroid/net/Uri;

.field private final httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

.field private final openidDiscoveryDocumentUrl:Landroid/net/Uri;

.field private final signingKeyResolver:Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$VerificationResultParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$VerificationResultParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->VERIFICATION_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$RefreshTokenResultParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$RefreshTokenResultParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->REFRESH_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/NoResultResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/NoResultResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->NO_RESULT_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/OpenIdDiscoveryDocumentParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/OpenIdDiscoveryDocumentParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->OPEN_ID_DISCOVERY_DOCUMENT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/JWKSetParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JWKSetParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->JWK_SET_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    const-string v1, "5.6.2"

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$1;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->ISSUE_ACCESS_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->signingKeyResolver:Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    iput-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    iput-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->signingKeyResolver:Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    return-object p0
.end method


# virtual methods
.method public getJWKSet()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/JWKSet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->getOpenIdDiscoveryDocument()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->getJwksUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->JWK_SET_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJWKSet failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LineAuthApiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getOpenIdDiscoveryDocument()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->OPEN_ID_DISCOVERY_DOCUMENT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpenIdDiscoveryDocument failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LineAuthApiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public issueAccessToken(Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/pkce/PKCECode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "oauth2/v2.1"

    const-string v2, "token"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "grant_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "authorization_code"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 p2, 0x4

    const-string v2, "redirect_uri"

    aput-object v2, v1, p2

    const/4 p2, 0x5

    aput-object p4, v1, p2

    const/4 p2, 0x6

    const-string p4, "client_id"

    aput-object p4, v1, p2

    const/4 p2, 0x7

    aput-object p1, v1, p2

    const/16 p1, 0x8

    const-string p2, "code_verifier"

    aput-object p2, v1, p1

    invoke-virtual {p3}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->getVerifier()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v1, p2

    const/16 p1, 0xa

    const-string p2, "id_token_key_type"

    aput-object p2, v1, p1

    sget-object p1, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->JWK:Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->name()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    aput-object p1, v1, p2

    const/16 p1, 0xc

    const-string p2, "client_version"

    aput-object p2, v1, p1

    const/16 p1, 0xd

    const-string p2, "LINE SDK Android v5.6.2"

    aput-object p2, v1, p1

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    iget-object p4, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->ISSUE_ACCESS_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p2, v0, p3, p1, p4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public refreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/RefreshTokenResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "oauth2/v2.1"

    const-string v2, "token"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "grant_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "refresh_token"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 p2, 0x4

    const-string v2, "client_id"

    aput-object v2, v1, p2

    const/4 p2, 0x5

    aput-object p1, v1, p2

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->REFRESH_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public revokeAccessToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "oauth2/v2.1"

    const-string v2, "revoke"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "access_token"

    aput-object v3, v1, v2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    const-string v2, "client_id"

    aput-object v2, v1, p2

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->NO_RESULT_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public revokeRefreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "oauth2/v2.1"

    const-string v2, "revoke"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "refresh_token"

    aput-object v3, v1, v2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    const-string v2, "client_id"

    aput-object v2, v1, p2

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->NO_RESULT_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public verifyAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const-string v1, "oauth2/v2.1"

    const-string v2, "verify"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "access_token"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->VERIFICATION_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
