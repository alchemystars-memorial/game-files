.class public final Lcom/appsflyer/internal/AFd1rSDK;
.super Lcom/appsflyer/internal/AFd1uSDK;
.source ""


# static fields
.field private static AFLogger$LogLevel:I = 0x0

.field private static getLevel:I = 0x36

.field private static onInstallConversionFailureNative:I = 0x1


# instance fields
.field private final afWarnLog:Lcom/appsflyer/internal/AFb1bSDK;

.field private final init:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/AFc1zSDK;)V
    .locals 2

    new-instance v0, Lcom/appsflyer/internal/AFd1eSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1zSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFb1bSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFd1eSDK;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p1}, Lcom/appsflyer/internal/AFd1uSDK;-><init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1zSDK;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1zSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFb1bSDK;

    move-result-object p2

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1rSDK;->afWarnLog:Lcom/appsflyer/internal/AFb1bSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1rSDK;->init:Ljava/lang/String;

    return-void
.end method

.method private afWarnLog()V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFd1rSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1rSDK;->onInstallConversionFailureNative:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v1, "sentRegisterRequestToAF"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    const-string v0, "[register] Successfully registered for Uninstall Tracking"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget v0, Lcom/appsflyer/internal/AFd1rSDK;->onInstallConversionFailureNative:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1rSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static values(IIZILjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    sget-object v0, Lcom/appsflyer/internal/AFf1qSDK;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    :goto_0
    sget v3, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    if-ge v3, p0, :cond_1

    sget v3, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    aget-char v3, p4, v3

    sput v3, Lcom/appsflyer/internal/AFf1qSDK;->values:I

    sget v3, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    sget v4, Lcom/appsflyer/internal/AFf1qSDK;->values:I

    add-int/2addr v4, p1

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    aget-char v4, v1, v3

    sget v5, Lcom/appsflyer/internal/AFd1rSDK;->getLevel:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    sput p3, Lcom/appsflyer/internal/AFf1qSDK;->valueOf:I

    new-array p1, p0, [C

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p3, Lcom/appsflyer/internal/AFf1qSDK;->valueOf:I

    sub-int p3, p0, p3

    sget p4, Lcom/appsflyer/internal/AFf1qSDK;->valueOf:I

    invoke-static {p1, v2, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p3, Lcom/appsflyer/internal/AFf1qSDK;->valueOf:I

    sget p4, Lcom/appsflyer/internal/AFf1qSDK;->valueOf:I

    sub-int p4, p0, p4

    invoke-static {p1, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz p2, :cond_4

    new-array p1, p0, [C

    sput v2, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    :goto_1
    sget p2, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    if-ge p2, p0, :cond_3

    sget p2, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    sget p3, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    sub-int p3, p0, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p1, p2

    sget p2, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/appsflyer/internal/AFf1qSDK;->AFKeystoreWrapper:I

    goto :goto_1

    :cond_3
    move-object v1, p1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFd1rSDK;->onInstallConversionFailureNative:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1rSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    invoke-super {p0}, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventParameterName()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1nSDK;

    const/4 v4, 0x5

    if-eqz v0, :cond_1

    const/16 v5, 0x30

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eq v5, v4, :cond_5

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1nSDK;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFd1rSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1rSDK;->onInstallConversionFailureNative:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1rSDK;->afWarnLog()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1rSDK;->afWarnLog()V

    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-super {p0}, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventParameterName()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1nSDK;

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0
.end method

.method protected final AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1rSDK;->afWarnLog:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v1

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const-string v6, "app_version_code"

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    const-string v6, "app_version_name"

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "app_name"

    invoke-virtual {p1, v6, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string/jumbo v2, "yyyy-MM-dd_HHmmssZ"

    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "installDate"

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v4, "Exception while collecting application version info."

    invoke-static {v4, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFb1xSDK;->values(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_1

    const-string v4, "appUserId"

    invoke-virtual {p1, v4, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    :cond_1
    :try_start_1
    const-string v2, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit16 v4, v4, 0x9d

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x1

    const-string/jumbo v7, "\ufffd\ufffb\u000b\ufffa\u0007"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/appsflyer/internal/AFd1rSDK;->values(IIZILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    const-string v4, "Exception while collecting device brand and model."

    invoke-static {v4, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v4, "deviceTrackingDisabled"

    invoke-virtual {v2, v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v4, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    sget v2, Lcom/appsflyer/internal/AFd1rSDK;->AFLogger$LogLevel:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1rSDK;->onInstallConversionFailureNative:I

    rem-int/lit8 v2, v2, 0x2

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1zSDK;->valueOf(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v6, "amazon_aid"

    invoke-virtual {p1, v6, v4}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFa1uSDK;->values:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "amazon_aid_limit"

    invoke-virtual {p1, v4, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v4, "advertiserId"

    invoke-virtual {v2, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move v5, v3

    :cond_4
    if-eq v5, v3, :cond_5

    goto :goto_3

    :cond_5
    sget v3, Lcom/appsflyer/internal/AFd1rSDK;->onInstallConversionFailureNative:I

    add-int/lit8 v3, v3, 0x43

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1rSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v4, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    :goto_3
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1aSDK;->AFLogger:Lcom/appsflyer/internal/AFd1gSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    const-string v3, "devkey"

    invoke-virtual {p1, v3, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1uSDK;->values(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {p1, v3, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1rSDK;->init:Ljava/lang/String;

    const-string v3, "af_gcm_token"

    invoke-virtual {p1, v3, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v3, "appsFlyerCount"

    invoke-interface {v2, v3}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "launch_counter"

    invoke-virtual {p1, v3, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk"

    invoke-virtual {p1, v3, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-eqz v0, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    const/16 v2, 0x28

    :goto_4
    if-eq v2, v1, :cond_7

    goto :goto_5

    :cond_7
    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    :goto_5
    return-void

    :cond_8
    const-string p1, "CustomerUserId not set, Tracking is disabled"

    invoke-static {p1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomerUserId not set, register is not sent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context is not provided, can\'t send register request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final afRDLog()Z
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFd1rSDK;->onInstallConversionFailureNative:I

    add-int/lit8 v1, v0, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1rSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    xor-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1rSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0
.end method
