.class Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
.super Lcom/facebook/internal/WebDialog$Builder;
.source "WebViewLoginMethodHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/WebViewLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthDialogBuilder"
.end annotation


# static fields
.field private static final OAUTH_DIALOG:Ljava/lang/String; = "oauth"


# instance fields
.field private authType:Ljava/lang/String;

.field private e2e:Ljava/lang/String;

.field private isFamilyLogin:Z

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private redirect_uri:Ljava/lang/String;

.field private shouldSkipDedupe:Z

.field private targetApp:Lcom/facebook/login/LoginTargetApp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "oauth"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/internal/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "fbconnect://success"

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->redirect_uri:Ljava/lang/String;

    sget-object p1, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    sget-object p1, Lcom/facebook/login/LoginTargetApp;->FACEBOOK:Lcom/facebook/login/LoginTargetApp;

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->targetApp:Lcom/facebook/login/LoginTargetApp;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->isFamilyLogin:Z

    iput-boolean p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->shouldSkipDedupe:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/internal/WebDialog;
    .locals 6

    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->redirect_uri:Ljava/lang/String;

    const-string v1, "redirect_uri"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->e2e:Ljava/lang/String;

    const-string v1, "e2e"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->targetApp:Lcom/facebook/login/LoginTargetApp;

    sget-object v1, Lcom/facebook/login/LoginTargetApp;->INSTAGRAM:Lcom/facebook/login/LoginTargetApp;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "token,signed_request,graph_domain,granted_scopes"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "token,signed_request,graph_domain"

    :goto_0
    const-string v1, "response_type"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "return_scopes"

    const-string/jumbo v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->authType:Ljava/lang/String;

    const-string v3, "auth_type"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "login_behavior"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->isFamilyLogin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->targetApp:Lcom/facebook/login/LoginTargetApp;

    invoke-virtual {v0}, Lcom/facebook/login/LoginTargetApp;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "fx_app"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->shouldSkipDedupe:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "skip_dedupe"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->getTheme()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->targetApp:Lcom/facebook/login/LoginTargetApp;

    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->getListener()Lcom/facebook/internal/WebDialog$OnCompleteListener;

    move-result-object v5

    const-string v1, "oauth"

    invoke-static/range {v0 .. v5}, Lcom/facebook/internal/WebDialog;->newInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/login/LoginTargetApp;Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog;

    move-result-object v0

    return-object v0
.end method

.method public setAuthType(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->authType:Ljava/lang/String;

    return-object p0
.end method

.method public setE2E(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->e2e:Ljava/lang/String;

    return-object p0
.end method

.method public setFamilyLogin(Z)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->isFamilyLogin:Z

    return-object p0
.end method

.method public setIsChromeOS(Z)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "fbconnect://chrome_os_success"

    goto :goto_0

    :cond_0
    const-string p1, "fbconnect://success"

    :goto_0
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->redirect_uri:Ljava/lang/String;

    return-object p0
.end method

.method public setIsRerequest(Z)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    .locals 0

    return-object p0
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object p0
.end method

.method public setLoginTargetApp(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->targetApp:Lcom/facebook/login/LoginTargetApp;

    return-object p0
.end method

.method public setShouldSkipDedupe(Z)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;->shouldSkipDedupe:Z

    return-object p0
.end method
