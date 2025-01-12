.class final Lcom/appsflyer/internal/AFc1mSDK$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFc1mSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

.field private synthetic valueOf:Lcom/appsflyer/internal/AFc1lSDK;

.field private synthetic values:Lcom/appsflyer/internal/AFc1jSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1jSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->values:Lcom/appsflyer/internal/AFc1jSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QUEUE: execution finished for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->values:Lcom/appsflyer/internal/AFc1jSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->afErrorLog:Ljava/util/Set;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->values:Lcom/appsflyer/internal/AFc1jSDK;

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1iSDK;->valueOf(Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1jSDK;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->values:Lcom/appsflyer/internal/AFc1jSDK;

    sget-object v1, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->AFKeystoreWrapper:Ljava/util/Set;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1mSDK;->values(Lcom/appsflyer/internal/AFc1mSDK;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1lSDK;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->afRDLog:Ljava/util/NavigableSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->afDebugLog:Ljava/util/List;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->AFKeystoreWrapper:Ljava/util/Set;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->valueOf:Lcom/appsflyer/internal/AFc1lSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1mSDK;->values(Lcom/appsflyer/internal/AFc1mSDK;)V

    return-void
.end method
