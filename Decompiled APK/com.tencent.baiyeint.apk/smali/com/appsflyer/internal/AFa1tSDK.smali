.class public abstract Lcom/appsflyer/internal/AFa1tSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field AFInAppEventParameterName:Ljava/lang/String;

.field public AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field AFKeystoreWrapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field AFLogger:Ljava/lang/String;

.field private final AFVersionDeclaration:Z

.field public afDebugLog:Ljava/lang/String;

.field public afErrorLog:Ljava/lang/String;

.field public afInfoLog:I

.field afRDLog:Ljava/lang/String;

.field private afWarnLog:[B

.field public valueOf:Landroid/app/Application;

.field public final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/appsflyer/internal/AFa1tSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFVersionDeclaration:Z

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    :cond_1
    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    return-object v0
.end method

.method public final AFInAppEventType(I)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 4

    iput p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    const-string v2, "counter"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    const-string v2, "counter"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    const-string v2, "launch_counter"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    const-string v2, "launch_counter"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/appsflyer/internal/AFa1tSDK;"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final AFInAppEventType()[B
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->afWarnLog:[B

    return-object v0
.end method

.method public AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    return-object p0
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final AFKeystoreWrapper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFVersionDeclaration:Z

    return v0
.end method

.method public afDebugLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public afErrorLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public afInfoLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final valueOf()Z
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1tSDK;->afDebugLog:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final values([B)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1tSDK;->afWarnLog:[B

    return-object p0
.end method

.method public abstract values()Lcom/appsflyer/internal/AFc1kSDK;
.end method

.method protected final values(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
