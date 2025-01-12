.class public final Lcom/appsflyer/internal/AFb1zSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field static AFKeystoreWrapper:Ljava/lang/Boolean;

.field static valueOf:Ljava/lang/String;


# instance fields
.field public final AFInAppEventType:Lcom/appsflyer/internal/AFc1tSDK;

.field private final values:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1tSDK;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1zSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1tSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFb1zSDK;->values:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1uSDK;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/appsflyer/internal/AFa1uSDK;"
        }
    .end annotation

    const-string v0, "advertiserIdEnabled"

    const-string v1, "advertiserId"

    invoke-static {}, Lcom/appsflyer/internal/AFb1zSDK;->valueOf()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "Trying to fetch GAID.."

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, -0x1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v6, 0x1

    :try_start_1
    const-string v7, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "emptyOrNull |"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    move v2, v6

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    move-object v7, v3

    move v3, v6

    goto :goto_0

    :catchall_2
    move-exception v7

    move-object v11, v3

    move v3, v2

    move-object v2, v7

    move-object v7, v11

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v7, "gpsAdInfo-null |"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "GpsAdIndo is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v7

    move-object v8, v3

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "WARNING: Google Play Services is missing."

    invoke-static {v9}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    const-string v10, "enableGpsFallback"

    invoke-virtual {v9, v10, v6}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    :try_start_5
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1fSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1fSDK$AFa1zSDK;

    move-result-object v7

    iget-object v8, v7, Lcom/appsflyer/internal/AFa1fSDK$AFa1zSDK;->valueOf:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/appsflyer/internal/AFa1fSDK$AFa1zSDK;->AFInAppEventParameterName()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    :cond_4
    const-string v9, "emptyOrNull (bypass) |"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :goto_1
    move v11, v3

    move-object v3, v2

    move v2, v11

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v3

    move-object v3, v7

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v7, "android.app.ReceiverRestrictedContext"

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v6

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string p0, "context = android.app.ReceiverRestrictedContext |"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "gaidError"

    invoke-interface {p1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v8, :cond_9

    if-eqz v3, :cond_9

    invoke-interface {p1, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {p0, v1, v8}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isGaidWithGps"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    new-instance p0, Lcom/appsflyer/internal/AFa1uSDK;

    invoke-direct {p0, v8, v3}, Lcom/appsflyer/internal/AFa1uSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public static valueOf(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1uSDK;
    .locals 4

    invoke-static {}, Lcom/appsflyer/internal/AFb1zSDK;->valueOf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "amazon_aid"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "limit_ad_tracking"

    const/4 v2, 0x2

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v3, "advertising_id"

    if-nez v0, :cond_2

    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/appsflyer/internal/AFa1uSDK;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/internal/AFa1uSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Couldn\'t fetch Amazon Advertising ID (Ad-Tracking is limited!)"

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_0
    new-instance v1, Lcom/appsflyer/internal/AFa1uSDK;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/internal/AFa1uSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_4
    :goto_1
    return-object v1
.end method

.method private static valueOf()Z
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static values(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1uSDK;
    .locals 5

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/internal/AFb1zSDK;->valueOf:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :goto_1
    move-object p0, v4

    goto :goto_3

    :cond_1
    sget-object v1, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    const-string v1, "collectOAID"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :try_start_0
    new-instance v1, Lcom/appsflyer/oaid/OaidClient;

    invoke-direct {v1, p0}, Lcom/appsflyer/oaid/OaidClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->isEnableLog()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/appsflyer/oaid/OaidClient;->setLogging(Z)V

    invoke-virtual {v1}, Lcom/appsflyer/oaid/OaidClient;->fetch()Lcom/appsflyer/oaid/OaidClient$Info;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/appsflyer/oaid/OaidClient$Info;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/appsflyer/oaid/OaidClient$Info;->getLat()Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_3

    :catchall_0
    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-object v1, v4

    :goto_2
    const-string p0, "No OAID library"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object p0, v4

    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_5

    new-instance v0, Lcom/appsflyer/internal/AFa1uSDK;

    invoke-direct {v0, v1, p0}, Lcom/appsflyer/internal/AFa1uSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventType:Ljava/lang/Boolean;

    return-object v0

    :cond_5
    return-object v4
.end method
