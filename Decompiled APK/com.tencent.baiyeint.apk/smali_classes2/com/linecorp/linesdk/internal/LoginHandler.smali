.class public Lcom/linecorp/linesdk/internal/LoginHandler;
.super Ljava/lang/Object;
.source "LoginHandler.java"


# static fields
.field private static REQUEST_CODE_LOGIN:I = 0x1

.field private static TAG:Ljava/lang/String; = "LoginHandler"


# instance fields
.field private loginListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/linecorp/linesdk/LoginListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/LoginHandler;->loginListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private getLoginIntent(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1, p3, p4}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntent(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p3, p4}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntentWithoutLineAppAuth(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isLoginCanceled(ILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isLoginRequestCode(I)Z
    .locals 1

    sget v0, Lcom/linecorp/linesdk/internal/LoginHandler;->REQUEST_CODE_LOGIN:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLoginSuccess(Lcom/linecorp/linesdk/auth/LineLoginResult;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p1

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onLoginFailure(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/LoginHandler;->loginListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/LoginListener;

    invoke-interface {v1, p1}, Lcom/linecorp/linesdk/LoginListener;->onLoginFailure(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onLoginSuccess(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/LoginHandler;->loginListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/LoginListener;

    invoke-interface {v1, p1}, Lcom/linecorp/linesdk/LoginListener;->onLoginSuccess(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addLoginListener(Lcom/linecorp/linesdk/LoginListener;)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/LoginHandler;->loginListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/LoginHandler;->isLoginRequestCode(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/linecorp/linesdk/internal/LoginHandler;->TAG:Ljava/lang/String;

    const-string p2, "Unexpected login request code"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/linecorp/linesdk/internal/LoginHandler;->isLoginCanceled(ILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/linecorp/linesdk/internal/LoginHandler;->TAG:Ljava/lang/String;

    const-string p2, "Login failed"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-static {p3}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginResultFromIntent(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/LoginHandler;->isLoginSuccess(Lcom/linecorp/linesdk/auth/LineLoginResult;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/LoginHandler;->onLoginSuccess(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/LoginHandler;->onLoginFailure(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public performLogin(Landroid/app/Activity;Lcom/linecorp/linesdk/internal/FragmentWrapper;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/linecorp/linesdk/internal/LoginHandler;->getLoginIntent(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p1

    sget p3, Lcom/linecorp/linesdk/internal/LoginHandler;->REQUEST_CODE_LOGIN:I

    invoke-virtual {p2, p1, p3}, Lcom/linecorp/linesdk/internal/FragmentWrapper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public performLogin(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linecorp/linesdk/internal/LoginHandler;->getLoginIntent(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p2

    sget p3, Lcom/linecorp/linesdk/internal/LoginHandler;->REQUEST_CODE_LOGIN:I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public removeLoginListener(Lcom/linecorp/linesdk/LoginListener;)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/LoginHandler;->loginListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
