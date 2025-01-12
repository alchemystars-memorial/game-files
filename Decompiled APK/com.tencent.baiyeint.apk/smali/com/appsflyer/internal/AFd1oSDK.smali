.class public final Lcom/appsflyer/internal/AFd1oSDK;
.super Lcom/appsflyer/internal/AFc1lSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1lSDK<",
        "Lcom/appsflyer/internal/AFd1mSDK;",
        ">;"
    }
.end annotation


# instance fields
.field public AFLogger:Lcom/appsflyer/internal/AFb1mSDK;

.field private final AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1gSDK;

.field private final AFVersionDeclaration:Lcom/appsflyer/internal/AFd1lSDK;

.field public final afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

.field public afErrorLog:Lcom/appsflyer/internal/AFd1mSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFd1nSDK;

.field private final afRDLog:Lcom/appsflyer/internal/AFb1aSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFc1uSDK;

.field private final getLevel:Ljava/lang/String;

.field private final init:Lcom/appsflyer/internal/AFd1kSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;Lcom/appsflyer/internal/AFb1aSDK;Lcom/appsflyer/internal/AFd1gSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFc1uSDK;Lcom/appsflyer/internal/AFd1kSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFd1qSDK;)V
    .locals 3

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1kSDK;

    const-string v2, "UpdateRemoteConfiguration"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFc1lSDK;-><init>(Lcom/appsflyer/internal/AFc1kSDK;[Lcom/appsflyer/internal/AFc1kSDK;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1oSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1mSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFd1nSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1oSDK;->afRDLog:Lcom/appsflyer/internal/AFb1aSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFd1oSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1gSDK;

    iput-object p4, p0, Lcom/appsflyer/internal/AFd1oSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1lSDK;

    iput-object p5, p0, Lcom/appsflyer/internal/AFd1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFc1uSDK;

    iput-object p6, p0, Lcom/appsflyer/internal/AFd1oSDK;->init:Lcom/appsflyer/internal/AFd1kSDK;

    iput-object p7, p0, Lcom/appsflyer/internal/AFd1oSDK;->getLevel:Ljava/lang/String;

    iput-object p8, p0, Lcom/appsflyer/internal/AFd1oSDK;->afDebugLog:Lcom/appsflyer/internal/AFd1qSDK;

    return-void
.end method

.method private AFInAppEventType(Ljava/lang/String;JLcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFc1nSDK;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/appsflyer/internal/AFe1lSDK;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFc1nSDK<",
            "Lcom/appsflyer/internal/AFb1sSDK;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/appsflyer/internal/AFc1nSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFb1sSDK;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p5, :cond_1

    move-object v8, p5

    goto :goto_1

    :cond_1
    move-object v8, v0

    :goto_1
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p6

    move-object v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFd1oSDK;->AFKeystoreWrapper(Ljava/lang/String;JLcom/appsflyer/internal/AFc1nSDK;Lcom/appsflyer/internal/AFb1sSDK;Lcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private AFKeystoreWrapper(Ljava/lang/String;JLcom/appsflyer/internal/AFc1nSDK;Lcom/appsflyer/internal/AFb1sSDK;Lcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/appsflyer/internal/AFc1nSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFb1sSDK;",
            "Lcom/appsflyer/internal/AFe1lSDK;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1sSDK;

    iget-wide v3, v3, Lcom/appsflyer/internal/AFc1sSDK;->AFKeystoreWrapper:J

    invoke-virtual/range {p4 .. p4}, Lcom/appsflyer/internal/AFc1nSDK;->getStatusCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    move v12, v0

    instance-of v0, v2, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    if-eqz v0, :cond_1

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v2, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    invoke-virtual {v2}, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;->getMetrics()Lcom/appsflyer/internal/AFc1sSDK;

    move-result-object v2

    iget-wide v2, v2, Lcom/appsflyer/internal/AFc1sSDK;->AFKeystoreWrapper:J

    move-object v15, v0

    move-wide v8, v2

    goto :goto_1

    :cond_1
    move-object v15, v2

    move-wide v8, v3

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/appsflyer/internal/AFb1sSDK;->AFInAppEventType:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v6, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v10, v0, p2

    new-instance v0, Lcom/appsflyer/internal/AFb1mSDK;

    move-object v5, v0

    move-object/from16 v7, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v5 .. v15}, Lcom/appsflyer/internal/AFb1mSDK;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsflyer/internal/AFd1oSDK;->AFLogger:Lcom/appsflyer/internal/AFb1mSDK;

    return-void
.end method

.method private afRDLog()Lcom/appsflyer/internal/AFd1mSDK;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v0, " seconds"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, v10, Lcom/appsflyer/internal/AFd1oSDK;->getLevel:Ljava/lang/String;

    iget-object v2, v10, Lcom/appsflyer/internal/AFd1oSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1gSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "CFG: Dev key is not set, SDK is not started."

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "CFG: Can\'t create CDN token, domain or version is not provided."

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "appsflyersdk.com"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    iget-object v1, v10, Lcom/appsflyer/internal/AFd1oSDK;->afRDLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v5}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :goto_1
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_3

    const-string v0, "CFG: can\'t create CDN token, skipping fetch config"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    return-object v0

    :cond_3
    :try_start_0
    iget-object v1, v10, Lcom/appsflyer/internal/AFd1oSDK;->init:Lcom/appsflyer/internal/AFd1kSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1kSDK;->valueOf()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "CFG: Cached config is expired, updating..."

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/appsflyer/internal/AFd1oSDK;->init:Lcom/appsflyer/internal/AFd1kSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1kSDK;->values()Z

    move-result v1

    iget-object v2, v10, Lcom/appsflyer/internal/AFd1oSDK;->afWarnLog:Lcom/appsflyer/internal/AFc1uSDK;

    const/16 v5, 0x5dc

    invoke-virtual {v2, v1, v12, v5}, Lcom/appsflyer/internal/AFc1uSDK;->values(ZLjava/lang/String;I)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1wSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1nSDK;

    move-result-object v13

    invoke-virtual {v13}, Lcom/appsflyer/internal/AFc1nSDK;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v13}, Lcom/appsflyer/internal/AFc1nSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFb1sSDK;

    const-string/jumbo v2, "x-amz-meta-af-auth-v1"

    invoke-virtual {v13, v2}, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CF-Cache-Status"

    invoke-virtual {v13, v5}, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v10, Lcom/appsflyer/internal/AFd1oSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFd1gSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v4, v10, Lcom/appsflyer/internal/AFd1oSDK;->afInfoLog:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-virtual {v4, v1, v2, v12, v5}, Lcom/appsflyer/internal/AFd1nSDK;->values(Lcom/appsflyer/internal/AFb1sSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1nSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1nSDK;->AFInAppEventParameterName()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v10, Lcom/appsflyer/internal/AFd1oSDK;->init:Lcom/appsflyer/internal/AFd1kSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper()J

    move-result-wide v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "CFG: using max-age fallback: "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v7, v10, Lcom/appsflyer/internal/AFd1oSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v11, v1, Lcom/appsflyer/internal/AFb1sSDK;->AFInAppEventParameterName:Ljava/lang/String;

    sget-object v3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v11, 0x2

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iget-object v11, v7, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v10, "af_remote_config"

    invoke-interface {v11, v10, v3}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v7, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v10, "af_rc_timestamp"

    invoke-interface {v3, v10, v14, v15}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    iget-object v3, v7, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v10, "af_rc_max_age"

    invoke-interface {v3, v10, v4, v5}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    iput-object v1, v7, Lcom/appsflyer/internal/AFd1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1sSDK;

    iput-wide v14, v7, Lcom/appsflyer/internal/AFd1lSDK;->values:J

    iput-wide v4, v7, Lcom/appsflyer/internal/AFd1lSDK;->valueOf:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CFG: Config successfully updated, timeToLive: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/appsflyer/internal/AFb1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1lSDK;

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;JLcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFc1nSDK;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->values:Lcom/appsflyer/internal/AFd1mSDK;

    return-object v0

    :cond_5
    iget-object v5, v2, Lcom/appsflyer/internal/AFb1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1lSDK;

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;JLcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFc1nSDK;)V

    const-string v0, "CFG: fetched config is not valid (MITM?) refuse to use it."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    return-object v0

    :cond_6
    :goto_3
    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    return-object v0

    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;JLcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFc1nSDK;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CFG: failed to fetch remote config from CDN with status code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/appsflyer/internal/AFc1nSDK;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    return-object v0

    :cond_8
    const-string v0, "CFG: active config is valid, skipping fetch"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1mSDK;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CFG: failed to update remote config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFd1oSDK;->AFKeystoreWrapper(Ljava/lang/String;JLcom/appsflyer/internal/AFc1nSDK;Lcom/appsflyer/internal/AFb1sSDK;Lcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_9

    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    return-object v0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InterruptedException;

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CFG: failed to fetch remote config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v1, v0, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    invoke-virtual {v1}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFc1nSDK;

    move-result-object v1

    move-object v5, v1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v8

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFd1oSDK;->AFKeystoreWrapper(Ljava/lang/String;JLcom/appsflyer/internal/AFc1nSDK;Lcom/appsflyer/internal/AFb1sSDK;Lcom/appsflyer/internal/AFe1lSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_b

    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/InterruptedIOException;

    throw v0
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFc1jSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1oSDK;->afRDLog()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1oSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1mSDK;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0

    :catch_0
    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1oSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1mSDK;

    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final values()J
    .locals 2

    const-wide/16 v0, 0x5dc

    return-wide v0
.end method
