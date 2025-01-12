.class public Lcom/linecorp/linesdk/api/LineApiClientBuilder;
.super Ljava/lang/Object;
.source "LineApiClientBuilder.java"


# instance fields
.field private apiBaseUri:Landroid/net/Uri;

.field private final channelId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private isEncryptorPreparationDisabled:Z

.field private isTokenAutoRefreshDisabled:Z

.field private openidDiscoveryDocumentUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->channelId:Ljava/lang/String;

    new-instance p2, Lcom/linecorp/linesdk/ManifestParser;

    invoke-direct {p2}, Lcom/linecorp/linesdk/ManifestParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/linecorp/linesdk/ManifestParser;->parse(Landroid/content/Context;)Lcom/linecorp/linesdk/api/LineEnvConfig;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/linecorp/linesdk/api/LineDefaultEnvConfig;

    invoke-direct {p1}, Lcom/linecorp/linesdk/api/LineDefaultEnvConfig;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getOpenIdDiscoveryDocumentUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getApiServerBaseUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->apiBaseUri:Landroid/net/Uri;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "channel id is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public apiBaseUri(Landroid/net/Uri;)Lcom/linecorp/linesdk/api/LineApiClientBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->apiBaseUri:Landroid/net/Uri;

    :cond_0
    return-object p0
.end method

.method public build()Lcom/linecorp/linesdk/api/LineApiClient;
    .locals 7

    iget-boolean v0, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->isEncryptorPreparationDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/linecorp/linesdk/internal/EncryptorHolder;->initializeOnWorkerThread(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->channelId:Ljava/lang/String;

    new-instance v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v3, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    iget-object v5, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->apiBaseUri:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v5}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    new-instance v3, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    iget-object v4, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->apiBaseUri:Landroid/net/Uri;

    invoke-direct {v3, v4, v5}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v4, Lcom/linecorp/linesdk/internal/AccessTokenCache;

    iget-object v5, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->channelId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/linecorp/linesdk/internal/AccessTokenCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;-><init>(Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/internal/AccessTokenCache;)V

    iget-boolean v1, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->isTokenAutoRefreshDisabled:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy;->newProxy(Lcom/linecorp/linesdk/api/LineApiClient;)Lcom/linecorp/linesdk/api/LineApiClient;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public disableEncryptorPreparation()Lcom/linecorp/linesdk/api/LineApiClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->isEncryptorPreparationDisabled:Z

    return-object p0
.end method

.method public disableTokenAutoRefresh()Lcom/linecorp/linesdk/api/LineApiClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->isTokenAutoRefreshDisabled:Z

    return-object p0
.end method

.method public openidDiscoveryDocumentUrl(Landroid/net/Uri;)Lcom/linecorp/linesdk/api/LineApiClientBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    :cond_0
    return-object p0
.end method
