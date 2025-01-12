.class public Lcom/appsflyer/share/LinkGenerator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;
    }
.end annotation


# instance fields
.field private AFInAppEventParameterName:Ljava/lang/String;

.field AFInAppEventType:Ljava/lang/String;

.field private AFKeystoreWrapper:Ljava/lang/String;

.field private AFLogger:Ljava/lang/String;

.field private afDebugLog:Ljava/lang/String;

.field private afErrorLog:Ljava/lang/String;

.field private afInfoLog:Ljava/lang/String;

.field private afRDLog:Ljava/lang/String;

.field private afWarnLog:Ljava/lang/String;

.field private final getLevel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private init:Ljava/lang/String;

.field valueOf:Ljava/lang/String;

.field private final values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/share/LinkGenerator;->getLevel:Ljava/util/Map;

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->values:Ljava/lang/String;

    return-void
.end method

.method private AFInAppEventParameterName()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->values:Ljava/lang/String;

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->afDebugLog:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "af_referrer_uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "af_channel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->afInfoLog:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "af_referrer_customer_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "c"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->afRDLog:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "af_referrer_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->AFLogger:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "af_referrer_image_url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->afWarnLog:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/share/LinkGenerator;->afWarnLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsflyer/share/LinkGenerator;->afErrorLog:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "^[/]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/share/LinkGenerator;->afErrorLog:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/share/LinkGenerator;->afWarnLog:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v4, v3

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsflyer/share/LinkGenerator;->afErrorLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "af_dp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->getLevel:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1sSDK;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static AFKeystoreWrapper(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/share/LinkGenerator;->getLevel:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParameters(Ljava/util/Map;)Lcom/appsflyer/share/LinkGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appsflyer/share/LinkGenerator;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appsflyer/share/LinkGenerator;->getLevel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public generateLink()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventType:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/appsflyer/internal/AFe1eSDK;->values:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->valueOf:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->valueOf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/share/LinkGenerator;->AFKeystoreWrapper(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateLink(Landroid/content/Context;Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/appsflyer/share/LinkGenerator$3;

    invoke-direct {v0, p2}, Lcom/appsflyer/share/LinkGenerator$3;-><init>(Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/appsflyer/share/LinkGenerator;->generateLink(Landroid/content/Context;Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;)V

    return-void
.end method

.method public generateLink(Landroid/content/Context;Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;)V
    .locals 9

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "oneLinkSlug"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/appsflyer/share/LinkGenerator;->init:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string/jumbo v1, "waitForCustomerId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    const-string p2, "CustomerUserId not set, generate User Invite Link is disabled"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;)V

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p1

    new-instance v0, Lcom/appsflyer/internal/AFd1ySDK;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    move-object v2, v0

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/appsflyer/internal/AFd1ySDK;-><init>(Lcom/appsflyer/internal/AFc1zSDK;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/appsflyer/share/LinkGenerator$AFa1ySDK;)V

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p1

    iget-object p2, p1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v1, p1, v0}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBrandDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/share/LinkGenerator;->init:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/share/LinkGenerator;->AFKeystoreWrapper:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventParameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/share/LinkGenerator;->values:Ljava/lang/String;

    return-object v0
.end method

.method public getUserParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsflyer/share/LinkGenerator;->getLevel:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public setBaseDeeplink(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->afWarnLog:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 5

    const-string v0, "https://%s/%s"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v4, 0x5

    if-ge p3, v4, :cond_2

    :cond_1
    const-string p2, "go.onelink.me"

    :cond_2
    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    aput-object p1, p3, v1

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventType:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    new-array p1, v3, [Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    const-string v3, "%sapp.%s"

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    aput-object p3, p1, v1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventType:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setBrandDomain(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->init:Ljava/lang/String;

    return-object p0
.end method

.method public setCampaign(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->AFKeystoreWrapper:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->AFInAppEventParameterName:Ljava/lang/String;

    return-object p0
.end method

.method public setDeeplinkPath(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->afErrorLog:Ljava/lang/String;

    return-object p0
.end method

.method public setReferrerCustomerId(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->afInfoLog:Ljava/lang/String;

    return-object p0
.end method

.method public setReferrerImageURL(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->AFLogger:Ljava/lang/String;

    return-object p0
.end method

.method public setReferrerName(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->afRDLog:Ljava/lang/String;

    return-object p0
.end method

.method public setReferrerUID(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/share/LinkGenerator;->afDebugLog:Ljava/lang/String;

    return-object p0
.end method
