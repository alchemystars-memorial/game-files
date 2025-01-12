.class Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;
.super Ljava/lang/Object;
.source "BrowserAuthenticationApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field private final friendshipStatusChanged:Ljava/lang/Boolean;

.field private final internalErrorMessage:Ljava/lang/String;

.field private final requestToken:Ljava/lang/String;

.field private final serverErrorCode:Ljava/lang/String;

.field private final serverErrorDescription:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->requestToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->friendshipStatusChanged:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->serverErrorCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->serverErrorDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->internalErrorMessage:Ljava/lang/String;

    return-void
.end method

.method private checkRequestToken()V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->requestToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "requestToken is null. Please check result by isSuccess before."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createAsAuthenticationAgentError(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;
    .locals 7

    new-instance v6, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method static createAsInternalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;
    .locals 7

    new-instance v6, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method static createAsSuccess(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;
    .locals 7

    new-instance v6, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method getFriendshipStatusChanged()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->checkRequestToken()V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->friendshipStatusChanged:Ljava/lang/Boolean;

    return-object v0
.end method

.method getLineApiError()Lcom/linecorp/linesdk/LineApiError;
    .locals 4

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->isAuthenticationAgentError()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "error"

    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->serverErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error_description"

    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->serverErrorDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v1, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->internalErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method getRequestToken()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->checkRequestToken()V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->requestToken:Ljava/lang/String;

    return-object v0
.end method

.method isAuthenticationAgentError()Z
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->internalErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->requestToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
