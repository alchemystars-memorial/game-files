.class public final Lcom/appsflyer/CreateOneLinkHttpTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1iSDK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1nSDK;

.field private final AFInAppEventType:Lcom/appsflyer/internal/AFd1gSDK;

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1aSDK;

.field private final AFLogger:Lcom/appsflyer/internal/AFc1mSDK;

.field private final afDebugLog:Lcom/appsflyer/internal/AFc1uSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFd1kSDK;

.field private afRDLog:Lcom/appsflyer/internal/AFb1mSDK;

.field private final valueOf:Ljava/lang/Object;

.field private final values:Lcom/appsflyer/internal/AFd1lSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;Lcom/appsflyer/internal/AFb1aSDK;Lcom/appsflyer/internal/AFd1gSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFc1uSDK;Lcom/appsflyer/internal/AFd1kSDK;Lcom/appsflyer/internal/AFc1mSDK;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->valueOf:Ljava/lang/Object;

    iput-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1nSDK;

    iput-object p2, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1aSDK;

    iput-object p3, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->AFInAppEventType:Lcom/appsflyer/internal/AFd1gSDK;

    iput-object p4, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->values:Lcom/appsflyer/internal/AFd1lSDK;

    iput-object p5, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->afDebugLog:Lcom/appsflyer/internal/AFc1uSDK;

    iput-object p6, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->afInfoLog:Lcom/appsflyer/internal/AFd1kSDK;

    iput-object p7, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->AFLogger:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object p1, p7, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final AFInAppEventType(Lcom/appsflyer/internal/AFc1lSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1lSDK<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final AFInAppEventType(Lcom/appsflyer/internal/AFd1qSDK;)V
    .locals 10

    new-instance v9, Lcom/appsflyer/internal/AFd1oSDK;

    iget-object v1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1nSDK;

    iget-object v2, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v3, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->AFInAppEventType:Lcom/appsflyer/internal/AFd1gSDK;

    iget-object v4, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->values:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v5, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->afDebugLog:Lcom/appsflyer/internal/AFc1uSDK;

    iget-object v6, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->afInfoLog:Lcom/appsflyer/internal/AFd1kSDK;

    const-string/jumbo v7, "v1"

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/internal/AFd1oSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;Lcom/appsflyer/internal/AFb1aSDK;Lcom/appsflyer/internal/AFd1gSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFc1uSDK;Lcom/appsflyer/internal/AFd1kSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFd1qSDK;)V

    iget-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->AFLogger:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v0, p1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v1, p1, v9}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1mSDK;
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->valueOf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->afRDLog:Lcom/appsflyer/internal/AFb1mSDK;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->afRDLog:Lcom/appsflyer/internal/AFb1mSDK;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFc1lSDK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1lSDK<",
            "*>;)V"
        }
    .end annotation

    instance-of p1, p1, Lcom/appsflyer/internal/AFd1oSDK;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->valueOf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->afRDLog:Lcom/appsflyer/internal/AFb1mSDK;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    iget-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->valueOf:Ljava/lang/Object;

    monitor-enter p1

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    return-void
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1jSDK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1lSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFc1jSDK;",
            ")V"
        }
    .end annotation

    instance-of p2, p1, Lcom/appsflyer/internal/AFd1oSDK;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/appsflyer/internal/AFd1oSDK;

    iget-object p2, p1, Lcom/appsflyer/internal/AFd1oSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1mSDK;

    if-nez p2, :cond_0

    const-string p2, "CFG: update RC returned null result, something went wrong!"

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    sget-object p2, Lcom/appsflyer/internal/AFd1mSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1mSDK;

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFd1mSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1mSDK;

    if-eq p2, v0, :cond_1

    iget-object p1, p1, Lcom/appsflyer/internal/AFd1oSDK;->AFLogger:Lcom/appsflyer/internal/AFb1mSDK;

    iget-object p2, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->valueOf:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iput-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->afRDLog:Lcom/appsflyer/internal/AFb1mSDK;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->valueOf:Ljava/lang/Object;

    monitor-enter p1

    monitor-exit p1

    :cond_2
    return-void
.end method
