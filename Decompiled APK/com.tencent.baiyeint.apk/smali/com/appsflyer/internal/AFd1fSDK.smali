.class public final Lcom/appsflyer/internal/AFd1fSDK;
.super Lcom/appsflyer/internal/AFc1aSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1aSDK<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final afRDLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1bSDK;

.field private final AFVersionDeclaration:Lcom/appsflyer/internal/AFb1aSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFd1qSDK;

.field private getLevel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final init:Lcom/appsflyer/internal/AFc1uSDK;

.field private onAttributionFailureNative:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "googleplay"

    const-string v1, "playstore"

    const-string v2, "googleplaystore"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFd1fSDK;->afRDLog:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1zSDK;)V
    .locals 4

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1kSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GCD-FETCH"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/appsflyer/internal/AFc1aSDK;-><init>(Lcom/appsflyer/internal/AFc1kSDK;[Lcom/appsflyer/internal/AFc1kSDK;Lcom/appsflyer/internal/AFc1zSDK;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1uSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->init:Lcom/appsflyer/internal/AFc1uSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->afRDLog()Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1qSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->afInfoLog()Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFb1aSDK;

    sget-object p1, Lcom/appsflyer/internal/AFc1kSDK;->values:Lcom/appsflyer/internal/AFc1kSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1lSDK;->AFKeystoreWrapper:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/appsflyer/internal/AFc1kSDK;->getLevel:Lcom/appsflyer/internal/AFc1kSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1lSDK;->AFKeystoreWrapper:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 2

    invoke-super {p0}, Lcom/appsflyer/internal/AFc1aSDK;->AFInAppEventParameterName()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->getLevel:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1fSDK;->onAttributionFailureNative:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/appsflyer/internal/AFd1hSDK;->valueOf(Ljava/util/Map;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/appsflyer/internal/AFd1hSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "Unknown error"

    invoke-static {v0}, Lcom/appsflyer/internal/AFd1hSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void
.end method

.method public final AFInAppEventType()Lcom/appsflyer/internal/AFc1jSDK;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "af_channel"

    const-string v1, "is_first_launch"

    const-string v2, "af_siteid"

    const-string v3, "[GCD-A03] Server retrieving attempt finished"

    iget-object v4, p0, Lcom/appsflyer/internal/AFc1aSDK;->AFLogger:Lcom/appsflyer/internal/AFd1gSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFd1gSDK;->values()Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1jSDK;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x2

    if-gt v6, v7, :cond_e

    const/4 v4, 0x1

    if-lt v6, v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    iget-object v8, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/appsflyer/internal/AFd1bSDK;->afWarnLog:J

    :try_start_0
    invoke-super {p0}, Lcom/appsflyer/internal/AFc1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v8

    iget-object v9, p0, Lcom/appsflyer/internal/AFc1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1nSDK;

    if-nez v9, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFc1nSDK;->getStatusCode()I

    move-result v10

    const/16 v11, 0x193

    if-eq v10, v11, :cond_3

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_2

    goto :goto_2

    :cond_2
    move v11, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v4

    :goto_3
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFc1nSDK;->isSuccessful()Z

    move-result v12

    const/16 v13, 0x194

    if-nez v12, :cond_6

    if-ne v10, v13, :cond_4

    goto :goto_7

    :cond_4
    if-nez v7, :cond_5

    if-nez v11, :cond_c

    goto :goto_5

    :goto_4
    move-object v4, v8

    goto/16 :goto_a

    :cond_5
    :goto_5
    const-string v4, "Error connection to server: "

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/appsflyer/internal/AFd1fSDK;->onAttributionFailureNative:Ljava/lang/String;

    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1jSDK;
    :try_end_0
    .catch Lcom/appsflyer/internal/AFc1gSDK; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-virtual {v1, v6}, Lcom/appsflyer/internal/AFd1bSDK;->values(I)V

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-object v0

    :cond_6
    :goto_7
    :try_start_1
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFc1nSDK;->getBody()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-virtual {v9}, Lcom/appsflyer/internal/AFc1nSDK;->getStatusCode()I

    move-result v9

    const-string v10, "iscache"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-ne v9, v13, :cond_7

    const-string v9, "error_reason"

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "status_code"

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "af_status"

    const-string v11, "Organic"

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "af_message"

    const-string v11, "organic install"

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/appsflyer/internal/AFd1fSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v10, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    :cond_8
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "[Invite] Detected App-Invite via channel: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    const-string v9, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :cond_a
    :goto_8
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/appsflyer/internal/AFd1fSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v10, "attributionId"

    invoke-interface {v9, v10, v4}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/appsflyer/internal/AFd1fSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1qSDK;

    const-string/jumbo v9, "sixtyDayConversionData"

    invoke-interface {v4, v9}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iput-object v8, p0, Lcom/appsflyer/internal/AFd1fSDK;->getLevel:Ljava/util/Map;

    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;
    :try_end_1
    .catch Lcom/appsflyer/internal/AFc1gSDK; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[GCD] Error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v8, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1jSDK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_d

    :cond_c
    :goto_9
    iget-object v4, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-virtual {v4, v6}, Lcom/appsflyer/internal/AFd1bSDK;->values(I)V

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto/16 :goto_4

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_d
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->onAttributionFailureNative:Ljava/lang/String;

    throw v4

    :catch_1
    move-exception v0

    const-string v1, "[GCD-E05] AppsFlyer dev key is missing"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v1, "AppsFlyer dev key is missing"

    iput-object v1, p0, Lcom/appsflyer/internal/AFd1fSDK;->onAttributionFailureNative:Ljava/lang/String;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_b
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-virtual {v1, v6}, Lcom/appsflyer/internal/AFd1bSDK;->values(I)V

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-object v4

    :cond_f
    const-string v0, "[GCD-E03] \'isStopTracking\' enabled"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "\'isStopTracking\' enabled"

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->onAttributionFailureNative:Ljava/lang/String;

    new-instance v0, Lcom/appsflyer/internal/AFc1dSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1dSDK;-><init>()V

    throw v0
.end method

.method public final AFInAppEventType(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1qSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFb1aSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1aSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1qSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/appsflyer/internal/AFd1fSDK;->afRDLog:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "[GCD] AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1fSDK;->init:Lcom/appsflyer/internal/AFc1uSDK;

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/internal/AFc1uSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GCD-B01] URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/appsflyer/internal/AFc1wSDK;->valueOf:Lcom/appsflyer/internal/AFb1wSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf(Ljava/lang/String;)V

    return-object p1
.end method

.method public final AFKeystoreWrapper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final afDebugLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final afRDLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
