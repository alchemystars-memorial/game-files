.class public final Lcom/appsflyer/internal/AFd1aSDK;
.super Lcom/appsflyer/internal/AFc1lSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1lSDK<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

.field private final afErrorLog:Lcom/appsflyer/internal/AFc1nSDK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appsflyer/internal/AFc1nSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final afInfoLog:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1sSDK;Lcom/appsflyer/internal/AFd1qSDK;)V
    .locals 4

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->AFLogger:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1kSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GCD-CHECK"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFc1lSDK;-><init>(Lcom/appsflyer/internal/AFc1kSDK;[Lcom/appsflyer/internal/AFc1kSDK;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1lSDK;->afErrorLog()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1aSDK;->afInfoLog:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/appsflyer/internal/AFc1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1nSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1aSDK;->afErrorLog:Lcom/appsflyer/internal/AFc1nSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

    return-void
.end method

.method private afDebugLog()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v1, "attributionId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1vSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[GCD] Failed to parse GCD response: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFc1jSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "is_first_launch"

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v2, "appsFlyerCount"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[GCD-A01] Loading conversion data. Counter: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v2, "appsflyerConversionDataCacheExpiration"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide v3, 0x134fd9000L

    cmp-long v1, v7, v3

    if-lez v1, :cond_0

    const-string v1, "[GCD-E02] Cached conversion data expired"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

    const/4 v3, 0x1

    const-string/jumbo v4, "sixtyDayConversionData"

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

    const/4 v3, 0x0

    const-string v4, "attributionId"

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

    invoke-interface {v1, v2, v5, v6}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1aSDK;->afDebugLog()Ljava/util/Map;

    move-result-object v1

    const-string v2, "[GCD] Error executing conversion data callback: "

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Lcom/appsflyer/internal/AFd1hSDK;->valueOf(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1aSDK;->afInfoLog:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1aSDK;->afInfoLog:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFd1hSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1aSDK;->afErrorLog:Lcom/appsflyer/internal/AFc1nSDK;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1nSDK;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch status code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1aSDK;->afErrorLog:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1nSDK;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFd1hSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final values()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method
