.class public Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;
.super Landroid/app/Activity;
.source "LineAuthenticationActivity.java"


# static fields
.field private static final INSTANCE_STATE_KEY_AUTHENTICATION_STATUS:Ljava/lang/String; = "authentication_status"

.field private static final PARAM_KEY_AUTHENTICATION_CONFIG:Ljava/lang/String; = "authentication_config"

.field private static final PARAM_KEY_AUTHENTICATION_PARAMS:Ljava/lang/String; = "authentication_params"

.field private static final RESPONSE_DATA_KEY_AUTHENTICATION_RESULT:Ljava/lang/String; = "authentication_result"

.field private static final SUPPORTED_SCHEME:Ljava/lang/String; = "lineauth"


# instance fields
.field private authenticationController:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

.field private authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

.field private isActivityStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->isActivityStopped:Z

    return-void
.end method

.method private getAuthenticationStatus(Landroid/os/Bundle;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-direct {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "authentication_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    if-nez p1, :cond_1

    new-instance p1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-direct {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;-><init>()V

    :cond_1
    return-object p1
.end method

.method public static getLoginIntent(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "authentication_config"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "authentication_params"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getResultFromIntent(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    const-string v0, "authentication_result"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/auth/LineLoginResult;

    if-nez p0, :cond_0

    const-string p0, "Authentication result is not found."

    invoke-static {p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationController:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method onAuthenticationFinished(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->isActivityStopped:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_HANDLED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "authentication_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->finish()V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/linecorp/linesdk/R$layout;->linesdk_activity_lineauthentication:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lineauth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "authentication_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    const-string v2, "authentication_params"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getAuthenticationStatus(Landroid/os/Bundle;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    new-instance v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V

    iput-object v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationController:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    return-void

    :cond_2
    :goto_0
    const-string p1, "The requested parameter is illegal."

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->onAuthenticationFinished(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationController:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->handleIntentFromLineApp(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INIT:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationController:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->startLineAuthentication()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationController:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->handleCancel()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->isActivityStopped:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    const-string v1, "authentication_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->isActivityStopped:Z

    return-void
.end method
