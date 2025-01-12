.class public final Lcom/appsflyer/internal/AFd1ySDK;
.super Lcom/appsflyer/internal/AFc1aSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1aSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final AFLogger$LogLevel:Ljava/util/UUID;

.field private final AFVersionDeclaration:Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;

.field private final afRDLog:Lcom/appsflyer/internal/AFb1aSDK;

.field private final afWarnLog:Ljava/lang/String;

.field private final getLevel:Ljava/lang/String;

.field private final init:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1zSDK;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1zSDK;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->valueOf:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1kSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/appsflyer/internal/AFc1aSDK;-><init>(Lcom/appsflyer/internal/AFc1kSDK;[Lcom/appsflyer/internal/AFc1kSDK;Lcom/appsflyer/internal/AFc1zSDK;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->afRDLog:Lcom/appsflyer/internal/AFb1aSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1ySDK;->AFLogger$LogLevel:Ljava/util/UUID;

    iput-object p3, p0, Lcom/appsflyer/internal/AFd1ySDK;->getLevel:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->init:Ljava/util/Map;

    iput-object p6, p0, Lcom/appsflyer/internal/AFd1ySDK;->AFVersionDeclaration:Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;

    iput-object p5, p0, Lcom/appsflyer/internal/AFd1ySDK;->afWarnLog:Ljava/lang/String;

    return-void
.end method

.method private afWarnLog()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "onelinkDomain"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->afRDLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/share/LinkGenerator;

    const-string v3, "af_app_invites"

    invoke-direct {v2, v3}, Lcom/appsflyer/share/LinkGenerator;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFd1ySDK;->getLevel:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/appsflyer/share/LinkGenerator;->setBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    const-string v2, "af_siteid"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/share/LinkGenerator;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->init:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/appsflyer/share/LinkGenerator;->addParameters(Ljava/util/Map;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/appsflyer/share/LinkGenerator;->setReferrerCustomerId(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/share/LinkGenerator;->generateLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 3

    invoke-super {p0}, Lcom/appsflyer/internal/AFc1aSDK;->AFInAppEventParameterName()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1ySDK;->AFVersionDeclaration:Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1lSDK;->valueOf:Lcom/appsflyer/internal/AFc1jSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1nSDK;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1nSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;->onResponse(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1lSDK;->afErrorLog()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    invoke-virtual {v1}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFc1nSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1nSDK;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Can\'t parse one link data"

    invoke-interface {v0, v1}, Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;->onResponseError(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->afWarnLog()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;->onResponse(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->afWarnLog()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;->onResponse(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected final AFInAppEventType(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1aSDK;->afErrorLog:Lcom/appsflyer/internal/AFc1uSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getLevel:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1ySDK;->init:Ljava/util/Map;

    iget-object v3, p0, Lcom/appsflyer/internal/AFd1ySDK;->afWarnLog:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/AFd1ySDK;->AFLogger$LogLevel:Ljava/util/UUID;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/internal/AFc1uSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    return-object p1
.end method

.method protected final a_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final afDebugLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final afRDLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final values()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method
