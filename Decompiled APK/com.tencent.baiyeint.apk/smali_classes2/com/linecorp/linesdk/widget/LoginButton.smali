.class public Lcom/linecorp/linesdk/widget/LoginButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "LoginButton.java"


# instance fields
.field private authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

.field private channelId:Ljava/lang/String;

.field private fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;

.field private internalListener:Landroid/view/View$OnClickListener;

.field private isLineAppAuthEnabled:Z

.field private loginDelegate:Lcom/linecorp/linesdk/LoginDelegate;

.field private loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    new-array p1, p1, [Lcom/linecorp/linesdk/Scope;

    sget-object v1, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    new-instance p1, Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-direct {p1}, Lcom/linecorp/linesdk/internal/LoginHandler;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    new-instance p1, Lcom/linecorp/linesdk/widget/LoginButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/widget/LoginButton$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/widget/LoginButton;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    new-instance p2, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    new-array p1, p1, [Lcom/linecorp/linesdk/Scope;

    sget-object v0, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    new-instance p1, Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-direct {p1}, Lcom/linecorp/linesdk/internal/LoginHandler;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    new-instance p1, Lcom/linecorp/linesdk/widget/LoginButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/widget/LoginButton$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/widget/LoginButton;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    new-instance p2, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    new-array p1, p1, [Lcom/linecorp/linesdk/Scope;

    sget-object p3, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    new-instance p1, Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-direct {p1}, Lcom/linecorp/linesdk/internal/LoginHandler;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    new-instance p1, Lcom/linecorp/linesdk/widget/LoginButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/widget/LoginButton$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/widget/LoginButton;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->init()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find an Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setAllCaps(Z)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setGravity(I)V

    sget v0, Lcom/linecorp/linesdk/R$string;->btn_line_login:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setText(I)V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$color;->text_login_btn:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setTextColor(I)V

    sget v0, Lcom/linecorp/linesdk/R$drawable;->background_login_btn:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private performLoginWithActivity(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    iget-boolean v1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    iget-object v2, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/linecorp/linesdk/internal/LoginHandler;->performLogin(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V

    return-void
.end method

.method private performLoginWithFragment(Ljava/lang/String;Lcom/linecorp/linesdk/internal/FragmentWrapper;)V
    .locals 6

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v3, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    iget-object v5, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-object v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/linecorp/linesdk/internal/LoginHandler;->performLogin(Landroid/app/Activity;Lcom/linecorp/linesdk/internal/FragmentWrapper;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V

    return-void
.end method


# virtual methods
.method public addLoginListener(Lcom/linecorp/linesdk/LoginListener;)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginDelegate:Lcom/linecorp/linesdk/LoginDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/LoginHandler;->addLoginListener(Lcom/linecorp/linesdk/LoginListener;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must set LoginDelegate through setLoginDelegate()  first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableLineAppAuthentication(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    return-void
.end method

.method synthetic lambda$new$0$com-linecorp-linesdk-widget-LoginButton(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/linecorp/linesdk/widget/LoginButton;->performLoginWithFragment(Ljava/lang/String;Lcom/linecorp/linesdk/internal/FragmentWrapper;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->performLoginWithActivity(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Channel id should not be empty."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Channel id should be set."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$setOnClickListener$1$com-linecorp-linesdk-widget-LoginButton(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeLoginListener(Lcom/linecorp/linesdk/LoginListener;)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/LoginHandler;->removeLoginListener(Lcom/linecorp/linesdk/LoginListener;)V

    return-void
.end method

.method public setAuthenticationParams(Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;

    return-void
.end method

.method public setLoginDelegate(Lcom/linecorp/linesdk/LoginDelegate;)V
    .locals 2

    instance-of v0, p1, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;

    iget-object v1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;->setLoginHandler(Lcom/linecorp/linesdk/internal/LoginHandler;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginDelegate:Lcom/linecorp/linesdk/LoginDelegate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected LoginDelegate, please use the provided Factory to create the instance"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/widget/LoginButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/widget/LoginButton$$ExternalSyntheticLambda1;-><init>(Lcom/linecorp/linesdk/widget/LoginButton;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
