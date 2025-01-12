.class Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;
.super Ljava/lang/Object;
.source "BrowserAuthenticationApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;,
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;,
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
    }
.end annotation


# static fields
.field private static final LENGTH_OAUTH_STATE:I = 0x10

.field private static final LENGTH_OPENID_NONCE:I = 0x10


# instance fields
.field private final authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    return-void
.end method

.method private static convertToIntents(Landroid/net/Uri;Ljava/util/Collection;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method createLoginUrl(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "response_type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "code"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "client_id"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "state"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const/4 p4, 0x6

    const-string v1, "code_challenge"

    aput-object v1, v0, p4

    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->getChallenge()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x7

    aput-object p2, v0, p4

    const/16 p2, 0x8

    const-string p4, "code_challenge_method"

    aput-object p4, v0, p2

    sget-object p2, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->S256:Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->getValue()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0x9

    aput-object p2, v0, p4

    const/16 p2, 0xa

    const-string p4, "redirect_uri"

    aput-object p4, v0, p2

    const/16 p2, 0xb

    aput-object p6, v0, p2

    const/16 p2, 0xc

    const-string p4, "sdk_ver"

    aput-object p4, v0, p2

    const/16 p2, 0xd

    const-string p4, "5.6.2"

    aput-object p4, v0, p2

    const/16 p2, 0xe

    const-string p4, "scope"

    aput-object p4, v0, p2

    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getScopes()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/linecorp/linesdk/Scope;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0xf

    aput-object p2, v0, p4

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "nonce"

    invoke-interface {p2, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getBotPrompt()Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getBotPrompt()Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object p4

    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    const-string p5, "bot_prompt"

    invoke-interface {p2, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p4, "/oauth2/v2.1/authorize/consent"

    invoke-static {p4, p2}, Lcom/linecorp/linesdk/utils/UriUtils;->appendQueryParams(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p4, v6, [Ljava/lang/String;

    const-string p5, "returnUri"

    aput-object p5, p4, v2

    aput-object p2, p4, v3

    const-string p2, "loginChannelId"

    aput-object p2, p4, v4

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v5

    invoke-static {p4}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getUILocale()Ljava/util/Locale;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getUILocale()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ui_locales"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getWebLoginPageUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/utils/UriUtils;->appendQueryParams(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method createRedirectUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent://result#Intent;package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";scheme=lineauth;end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getAuthenticationIntentHolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->isChromeCustomTabSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.intent.action.VIEW"

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const v3, 0x106000b

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v3, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v1

    :goto_0
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->getLineAppVersion(Landroid/content/Context;)Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    move-result-object v4

    const/4 v5, 0x1

    xor-int/2addr p3, v5

    if-eqz p3, :cond_1

    if-eqz v4, :cond_1

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "jp.naver.line.android"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, p3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->resolveActivity(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance p1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {p1, p3, v0, v5}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p1

    :cond_1
    new-instance p3, Landroid/content/Intent;

    const-string v4, "https://"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->convertToIntents(Landroid/net/Uri;Ljava/util/Collection;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_3

    if-ne p3, v5, :cond_2

    new-instance p2, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p2, p1, v0, v2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p2

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-static {p2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Landroid/os/Parcelable;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string p3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {p1, p2, v0, v2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/content/ActivityNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity for LINE log-in is not found. uri="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getAuthenticationResultFrom(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Illegal redirection from external application."

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsInternalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getOAuthState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "friendship_status_changed"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsSuccess(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_description"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsAuthenticationAgentError(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_4
    :goto_1
    const-string p1, "Illegal parameter value of \'state\'."

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsInternalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    return-object p1
.end method

.method getRequest(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/StringUtils;->createRandomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v1, v5}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setOAuthState(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getScopes()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/Scope;->OPENID_CONNECT:Lcom/linecorp/linesdk/Scope;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getNonce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/StringUtils;->createRandomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0, v6}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setOpenIdNonce(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->createRedirectUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->createLoginUrl(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->isLineAppAuthenticationDisabled()Z

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->getAuthenticationIntentHolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    move-result-object p1

    new-instance p2, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->getStartActivityOptions()Landroid/os/Bundle;

    move-result-object p4

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->access$000(Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;)Z

    move-result p1

    invoke-direct {p2, p3, p4, v0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-object p2
.end method

.method isChromeCustomTabSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method resolveActivity(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
