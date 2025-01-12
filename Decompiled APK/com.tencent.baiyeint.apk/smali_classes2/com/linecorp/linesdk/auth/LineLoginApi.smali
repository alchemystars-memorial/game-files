.class public Lcom/linecorp/linesdk/auth/LineLoginApi;
.super Ljava/lang/Object;
.source "LineLoginApi.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginIntent(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->isEncryptorPreparationDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/linecorp/linesdk/internal/EncryptorHolder;->initializeOnWorkerThread(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getLoginIntent(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getLoginIntent(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;

    invoke-direct {v0, p1, p0}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntent(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getLoginIntentWithoutLineAppAuth(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;

    invoke-direct {v0, p1, p0}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->disableLineAppAuthentication()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntent(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getLoginResultFromIntent(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "Callback intent is null"

    invoke-static {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getResultFromIntent(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    :goto_0
    return-object p0
.end method
