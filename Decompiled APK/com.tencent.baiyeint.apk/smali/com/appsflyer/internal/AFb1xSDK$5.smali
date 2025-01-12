.class final Lcom/appsflyer/internal/AFb1xSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1xSDK;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/AFb1xSDK;


# direct methods
.method public static synthetic $r8$lambda$1B6UGU7KzoCo6FuaTpC3d9AJNls(Lcom/appsflyer/internal/AFb1xSDK$5;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1xSDK$5;->AFInAppEventParameterName()V

    return-void
.end method

.method constructor <init>(Lcom/appsflyer/internal/AFb1xSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK$5;->values:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic AFInAppEventParameterName()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/AFe1vSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1vSDK;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK$5;->values:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;)Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK$5;->values:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;)Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK$5;->values:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$5;->values:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1xSDK;)Lcom/appsflyer/internal/AFc1xSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/AFb1xSDK$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFb1xSDK$5$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFb1xSDK$5;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method
