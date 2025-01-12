.class final Lcom/appsflyer/internal/AFb1xSDK$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1xSDK;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1xSDK;

.field private synthetic valueOf:Lcom/appsflyer/internal/AFd1bSDK;

.field private synthetic values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1xSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->valueOf:Lcom/appsflyer/internal/AFd1bSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->valueOf:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1bSDK;->valueOf()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1zSDK;->afDebugLog()Lcom/appsflyer/CreateOneLinkHttpTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appsflyer/CreateOneLinkHttpTask;->AFInAppEventType(Lcom/appsflyer/internal/AFd1qSDK;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1xSDK;)V

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/SharedPreferences;Z)I

    move-result v0

    const-string v1, "onBecameForeground"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Lcom/appsflyer/internal/AFa1cSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1cSDK;

    move-result-object v0

    iget-object v1, v0, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventType:Landroid/os/Handler;

    iget-object v2, v0, Lcom/appsflyer/internal/AFa1cSDK;->afErrorLog:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventType:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventParameterName:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lcom/appsflyer/internal/AFe1pSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>()V

    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/appsflyer/internal/AFa1sSDK;->AFKeystoreWrapper(Ljava/util/Map;Landroid/content/Intent;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1xSDK;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, v0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    :cond_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    iput-object v2, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/app/Activity;)V

    return-void
.end method

.method public final AFKeystoreWrapper(Landroid/content/Context;)V
    .locals 7

    const-string v0, "onBecameBackground"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->valueOf:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/appsflyer/internal/AFd1bSDK;->afRDLog:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/appsflyer/internal/AFd1bSDK;->afRDLog:J

    sub-long/2addr v1, v3

    cmp-long v3, v1, v5

    const-wide/16 v4, 0x3e8

    if-lez v3, :cond_0

    cmp-long v3, v1, v4

    if-gez v3, :cond_0

    move-wide v1, v4

    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/appsflyer/internal/AFd1bSDK;->AFLogger$LogLevel:J

    iget-object v1, v0, Lcom/appsflyer/internal/AFd1bSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1qSDK;

    iget-wide v2, v0, Lcom/appsflyer/internal/AFd1bSDK;->AFLogger$LogLevel:J

    const-string v0, "prev_session_dur"

    invoke-interface {v1, v0, v2, v3}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v0, "Metrics: fg ts is missing"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :goto_0
    const-string v0, "callStatsBackground background call"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1xSDK;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1qSDK;->afErrorLog()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper()V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/AFb1xSDK$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v3}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1xSDK;)Lcom/appsflyer/internal/AFc1xSDK;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFb1qSDK;->valueOf(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFc1zSDK;)V

    :cond_2
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1qSDK;->valueOf()V

    goto :goto_1

    :cond_3
    const-string v0, "RD status is OFF"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1cSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1cSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper()V

    return-void
.end method
