.class public final Lcom/appsflyer/internal/AFa1eSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static AFKeystoreWrapper:Ljava/lang/String; = "https://%ssdk-services.%s/validate-android-signature"

.field private static valueOf:Ljava/lang/String;


# instance fields
.field private AFInAppEventParameterName:Ljava/lang/String;

.field private AFInAppEventType:Ljava/lang/String;

.field private AFLogger:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private afDebugLog:Ljava/lang/String;

.field private afErrorLog:Ljava/lang/String;

.field private afInfoLog:Ljava/lang/String;

.field private afRDLog:Ljava/lang/String;

.field private values:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://%svalidate.%s/api/v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/internal/AFb1xSDK;->values:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/androidevent?buildnumber=6.9.2&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFa1eSDK;->valueOf:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1eSDK;->values:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/appsflyer/internal/AFa1eSDK;->AFInAppEventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/internal/AFa1eSDK;->AFInAppEventParameterName:Ljava/lang/String;

    iput-object p5, p0, Lcom/appsflyer/internal/AFa1eSDK;->afErrorLog:Ljava/lang/String;

    iput-object p6, p0, Lcom/appsflyer/internal/AFa1eSDK;->afRDLog:Ljava/lang/String;

    iput-object p7, p0, Lcom/appsflyer/internal/AFa1eSDK;->afInfoLog:Ljava/lang/String;

    iput-object p8, p0, Lcom/appsflyer/internal/AFa1eSDK;->AFLogger:Ljava/util/Map;

    iput-object p4, p0, Lcom/appsflyer/internal/AFa1eSDK;->afDebugLog:Ljava/lang/String;

    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1eSDK;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1eSDK;->afRDLog:Ljava/lang/String;

    return-object p0
.end method

.method private static AFInAppEventType(Landroid/content/Context;Lcom/appsflyer/internal/AFe1qSDK;)Lcom/appsflyer/internal/AFd1uSDK;
    .locals 2

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;)V

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p0

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1aSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1tSDK;

    new-instance v0, Lcom/appsflyer/internal/AFd1uSDK;

    invoke-direct {v0, p1, p0}, Lcom/appsflyer/internal/AFd1uSDK;-><init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1zSDK;)V

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1zSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p0

    iget-object p1, p0, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/AFa1eSDK;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1eSDK;->afErrorLog:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic AFKeystoreWrapper(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/appsflyer/internal/AFa1eSDK;->values(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFa1eSDK;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1eSDK;->afInfoLog:Ljava/lang/String;

    return-object p0
.end method

.method private static values(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/appsflyer/internal/AFb1xSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validate callback parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Validate in app purchase success: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget-object p0, Lcom/appsflyer/internal/AFb1xSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    invoke-interface {p0}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInApp()V

    return-void

    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Validate in app purchase failed: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget-object p0, Lcom/appsflyer/internal/AFb1xSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-nez p4, :cond_1

    const-string p4, "Failed validating"

    :cond_1
    invoke-interface {p0, p4}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-string v0, "advertiserId"

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1eSDK;->AFInAppEventType:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1eSDK;->values:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "public-key"

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1eSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "sig-data"

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1eSDK;->afErrorLog:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "signature"

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1eSDK;->afDebugLog:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1eSDK;->AFLogger:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/appsflyer/internal/AFa1eSDK;->valueOf:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "referrer"

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {v9, v2}, Lcom/appsflyer/internal/AFe1nSDK;-><init>(Landroid/content/Context;)V

    iput-object v7, v9, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    move-object v7, v9

    check-cast v7, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/appsflyer/internal/AFb1xSDK;->values(Lcom/appsflyer/internal/AFa1tSDK;)Ljava/util/Map;

    move-result-object v10

    const-string v12, "price"

    iget-object v13, p0, Lcom/appsflyer/internal/AFa1eSDK;->afRDLog:Ljava/lang/String;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "currency"

    iget-object v13, p0, Lcom/appsflyer/internal/AFa1eSDK;->afInfoLog:Ljava/lang/String;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "receipt_data"

    invoke-interface {v10, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_3

    const-string v4, "extra_prms"

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v7}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1zSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v9, v10}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-static {v2, v4}, Lcom/appsflyer/internal/AFa1eSDK;->AFInAppEventType(Landroid/content/Context;Lcom/appsflyer/internal/AFe1qSDK;)Lcom/appsflyer/internal/AFd1uSDK;

    const-string v4, "dev_key"

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1eSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "app_id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "uid"

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Lcom/appsflyer/internal/AFa1eSDK;->AFKeystoreWrapper:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/appsflyer/internal/AFe1rSDK;

    invoke-direct {v4}, Lcom/appsflyer/internal/AFe1rSDK;-><init>()V

    invoke-virtual {v4, v3}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFe1rSDK;

    invoke-static {v2, v0}, Lcom/appsflyer/internal/AFa1eSDK;->AFInAppEventType(Landroid/content/Context;Lcom/appsflyer/internal/AFe1qSDK;)Lcom/appsflyer/internal/AFd1uSDK;

    move-result-object v2

    new-instance v3, Lcom/appsflyer/internal/AFa1eSDK$3;

    invoke-direct {v3, p0, v2}, Lcom/appsflyer/internal/AFa1eSDK$3;-><init>(Lcom/appsflyer/internal/AFa1eSDK;Lcom/appsflyer/internal/AFd1uSDK;)V

    iput-object v3, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/appsflyer/internal/AFb1xSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v2, :cond_5

    const-string v2, "Failed Validate request + ex"

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1eSDK;->afErrorLog:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/AFa1eSDK;->afRDLog:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1eSDK;->afInfoLog:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/appsflyer/internal/AFa1eSDK;->values(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method
