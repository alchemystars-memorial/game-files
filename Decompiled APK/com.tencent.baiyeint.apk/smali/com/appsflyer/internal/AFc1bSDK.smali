.class public final Lcom/appsflyer/internal/AFc1bSDK;
.super Lcom/appsflyer/internal/AFc1lSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1lSDK<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile afErrorLog:Z = false


# instance fields
.field private final AFLogger:Lcom/appsflyer/internal/AFc1zSDK;

.field private final afDebugLog:Lcom/appsflyer/internal/AFc1mSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFa1pSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1zSDK;)V
    .locals 3

    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1kSDK;

    const-string v2, "LoadCachedRequests"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFc1lSDK;-><init>(Lcom/appsflyer/internal/AFc1kSDK;[Lcom/appsflyer/internal/AFc1kSDK;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->getLevel()Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog:Lcom/appsflyer/internal/AFa1pSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1bSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1mSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger:Lcom/appsflyer/internal/AFc1zSDK;

    return-void
.end method

.method public static afRDLog()Z
    .locals 1

    sget-boolean v0, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog:Z

    return v0
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFc1jSDK;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog:Lcom/appsflyer/internal/AFa1pSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFa1dSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CACHE: resending request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/appsflyer/internal/AFa1dSDK;->values:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/appsflyer/internal/AFa1dSDK;->values:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&isCachedRequest=true&timeincache="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/appsflyer/internal/AFe1ySDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventParameterName()[B

    move-result-object v4

    iget-object v5, v1, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventParameterName:Ljava/lang/String;

    iget-object v1, v1, Lcom/appsflyer/internal/AFa1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/appsflyer/internal/AFe1ySDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFc1kSDK;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1bSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1mSDK;

    new-instance v2, Lcom/appsflyer/internal/AFd1vSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger:Lcom/appsflyer/internal/AFc1zSDK;

    invoke-direct {v2, v3, v4}, Lcom/appsflyer/internal/AFd1vSDK;-><init>(Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFc1zSDK;)V

    iget-object v3, v1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v4, v1, v2}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "QUEUE: Failed to resend cached request"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog:Z

    sget-object v0, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final values()J
    .locals 2

    const-wide/16 v0, 0x7530

    return-wide v0
.end method
