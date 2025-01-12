.class public Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
.super Ljava/lang/Object;
.source "LineAuthenticationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private apiBaseUrl:Landroid/net/Uri;

.field private final channelId:Ljava/lang/String;

.field private isEncryptorPreparationDisabled:Z

.field private isLineAppAuthenticationDisabled:Z

.field private openidDiscoveryDocumentUrl:Landroid/net/Uri;

.field private webLoginPageUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/ManifestParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/ManifestParser;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/linecorp/linesdk/ManifestParser;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/linecorp/linesdk/ManifestParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->channelId:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p3, p2}, Lcom/linecorp/linesdk/ManifestParser;->parse(Landroid/content/Context;)Lcom/linecorp/linesdk/api/LineEnvConfig;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/linecorp/linesdk/api/LineDefaultEnvConfig;

    invoke-direct {p1}, Lcom/linecorp/linesdk/api/LineDefaultEnvConfig;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getOpenIdDiscoveryDocumentUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getApiServerBaseUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->apiBaseUrl:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getWebLoginPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->webLoginPageUrl:Landroid/net/Uri;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "channelId is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->apiBaseUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->webLoginPageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->isLineAppAuthenticationDisabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->isEncryptorPreparationDisabled:Z

    return p0
.end method


# virtual methods
.method apiBaseUrl(Landroid/net/Uri;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->apiBaseUrl:Landroid/net/Uri;

    :cond_0
    return-object p0
.end method

.method public build()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;-><init>(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$1;)V

    return-object v0
.end method

.method public disableEncryptorPreparation()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->isEncryptorPreparationDisabled:Z

    return-object p0
.end method

.method public disableLineAppAuthentication()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->isLineAppAuthenticationDisabled:Z

    return-object p0
.end method

.method openidDiscoveryDocumentUrl(Landroid/net/Uri;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    :cond_0
    return-object p0
.end method

.method webLoginPageUrl(Landroid/net/Uri;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->webLoginPageUrl:Landroid/net/Uri;

    :cond_0
    return-object p0
.end method
