.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;
.super Ljava/lang/Object;
.source "LineAuthenticationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;,
        Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;
    }
.end annotation


# static fields
.field private static final CANCEL_DELAY_MILLIS:J = 0x3e8L

.field private static final REQUEST_CODE:I = 0x3

.field private static intentResultFromLineAPP:Landroid/content/Intent;


# instance fields
.field private final accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

.field private final activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

.field private final authApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

.field private final authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

.field private final browserAuthenticationApi:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

.field private final config:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

.field private final params:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

.field private final talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 9

    new-instance v3, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getOpenidDiscoveryDocumentUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getApiBaseUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    new-instance v4, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getApiBaseUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v5, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    invoke-direct {v5, p3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;)V

    new-instance v6, Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;Lcom/linecorp/linesdk/internal/AccessTokenCache;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V

    return-void
.end method

.method constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;Lcom/linecorp/linesdk/internal/AccessTokenCache;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->config:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    iput-object p3, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iput-object p4, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    iput-object p5, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->browserAuthenticationApi:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    iput-object p6, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    iput-object p7, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iput-object p8, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->params:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    return-void
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    return-object p0
.end method

.method static synthetic access$400()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->intentResultFromLineAPP:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$402(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    sput-object p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->intentResultFromLineAPP:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->config:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/AccessTokenCache;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    return-object p0
.end method

.method public static setIntent(Landroid/content/Intent;)V
    .locals 0

    sput-object p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->intentResultFromLineAPP:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method createPKCECode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;
    .locals 1

    invoke-static {}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->newCode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    move-result-object v0

    return-object v0
.end method

.method handleCancel()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method handleIntentFromLineApp(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationIntentReceived()V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->browserAuthenticationApi:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->getAuthenticationResultFrom(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationIntentHandled()V

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->isAuthenticationAgentError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->getLineApiError()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->authenticationAgentError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->getLineApiError()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->onAuthenticationFinished(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void

    :cond_1
    new-instance v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object p1

    sget-object p2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method startLineAuthentication()V
    .locals 5

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationStarted()V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->createPKCECode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setPKCECode(Lcom/linecorp/linesdk/internal/pkce/PKCECode;)V

    :try_start_0
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->browserAuthenticationApi:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    iget-object v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->config:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    iget-object v4, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->params:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->getRequest(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->isLineAppAuthentication()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getStartActivityOptions()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getStartActivityOptions()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setSentRedirectUri(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationIntentHandled()V

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    sget-object v3, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->LOGIN_ACTIVITY_NOT_FOUND:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    invoke-direct {v2, v0, v3}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    invoke-static {v2}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->onAuthenticationFinished(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    :goto_1
    return-void
.end method
