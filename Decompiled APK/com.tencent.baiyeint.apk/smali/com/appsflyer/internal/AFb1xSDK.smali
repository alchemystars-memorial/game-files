.class public final Lcom/appsflyer/internal/AFb1xSDK;
.super Lcom/appsflyer/AppsFlyerLib;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;,
        Lcom/appsflyer/internal/AFb1xSDK$AFa1wSDK;,
        Lcom/appsflyer/internal/AFb1xSDK$AFa1xSDK;
    }
.end annotation


# static fields
.field public static final AFInAppEventParameterName:Ljava/lang/String;

.field public static volatile AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener; = null

.field static final AFKeystoreWrapper:Ljava/lang/String;

.field private static AFLogger$LogLevel:Lcom/appsflyer/internal/AFb1xSDK; = null

.field private static AFVersionDeclaration:Ljava/lang/String; = null

.field private static AppsFlyerConversionListener:[C = null

.field private static AppsFlyerInAppPurchaseValidatorListener:J = 0x0L

.field private static afDebugLog:Ljava/lang/String; = null

.field private static afErrorLog:Ljava/lang/String; = null

.field private static final afInfoLog:Ljava/lang/String;

.field private static afWarnLog:Ljava/lang/String; = null

.field private static getLevel:Ljava/lang/String; = null

.field private static init:Ljava/lang/String; = null

.field private static onValidateInApp:I = 0x1

.field private static onValidateInAppFailure:I

.field static valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

.field public static final values:Ljava/lang/String;


# instance fields
.field public AFLogger:Lcom/appsflyer/internal/AFa1fSDK;

.field private AppsFlyer2dXConversionCallback:J

.field private final AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

.field afRDLog:Ljava/lang/String;

.field private onAppOpenAttribution:Lcom/appsflyer/internal/AFb1eSDK;

.field private onAppOpenAttributionNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onAttributionFailure:Ljava/lang/String;

.field private onAttributionFailureNative:J

.field private onConversionDataFail:Z

.field private onConversionDataSuccess:Z

.field private onDeepLinking:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onDeepLinkingNative:Lcom/appsflyer/internal/AFb1vSDK;

.field private onInstallConversionDataLoadedNative:Ljava/lang/String;

.field private onInstallConversionFailureNative:J

.field private onResponse:Landroid/content/SharedPreferences;

.field private onResponseError:Z

.field private onResponseErrorNative:Landroid/app/Application;

.field private onResponseNative:Z


# direct methods
.method public static synthetic $r8$lambda$F1OA5WElZ75k2xzPv4A1tjzymzU(Lcom/appsflyer/internal/AFb1xSDK;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1xSDK;->values(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf()V

    const-string v0, "221"

    sput-object v0, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x21

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    shr-int/lit8 v2, v2, 0x6

    int-to-char v2, v2

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, "6.9.2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFb1xSDK;->values:Ljava/lang/String;

    const-string v1, "https://%sstats.%s/stats"

    sput-object v1, Lcom/appsflyer/internal/AFb1xSDK;->afDebugLog:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/androidevent?buildnumber=6.9.2&app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v1, "https://%sadrevenue.%s/api/v2/generic/v6.9.2/android?app_id="

    sput-object v1, Lcom/appsflyer/internal/AFb1xSDK;->afErrorLog:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/androidevent?app_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFb1xSDK;->afInfoLog:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sconversions.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFb1xSDK;->init:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%slaunches.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFb1xSDK;->getLevel:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sinapps.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFb1xSDK;->afWarnLog:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sattr.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFb1xSDK;->AFVersionDeclaration:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/internal/AFb1xSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    sput-object v0, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    new-instance v0, Lcom/appsflyer/internal/AFb1xSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1xSDK;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFb1xSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFb1xSDK;

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerLib;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAttributionFailureNative:J

    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyer2dXConversionCallback:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionFailureNative:J

    new-instance v0, Lcom/appsflyer/internal/AFb1vSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1vSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onDeepLinkingNative:Lcom/appsflyer/internal/AFb1vSDK;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onConversionDataSuccess:Z

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseError:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/appsflyer/AFVersionDeclaration;->init()V

    new-instance v1, Lcom/appsflyer/internal/AFc1xSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFc1xSDK;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;

    invoke-direct {v2, p0, v0}, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;-><init>(Lcom/appsflyer/internal/AFb1xSDK;B)V

    iget-object v0, v1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1xSDK;J)J
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v0, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    iput-wide p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyer2dXConversionCallback:J

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-wide p1

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static AFInAppEventParameterName(ICI)Ljava/lang/String;
    .locals 9

    sget-object v0, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventParameterName:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-array v1, p2, [C

    const/4 v2, 0x0

    sput v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    :goto_0
    sget v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    if-ge v2, p2, :cond_0

    sget v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    sget-object v3, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerConversionListener:[C

    sget v4, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    int-to-long v5, v5

    sget-wide v7, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerInAppPurchaseValidatorListener:J

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    sget v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:I

    goto :goto_0

    :cond_0
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

.method public static AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1qSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const-string v1, "CACHED_CHANNEL"

    invoke-interface {p0, v1, v0}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x52

    if-nez p0, :cond_1

    const/16 p0, 0x50

    goto :goto_1

    :cond_1
    move p0, p1

    :goto_1
    if-eq p0, p1, :cond_2

    const/16 p0, 0x54

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {p0, v1, p1}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static AFInAppEventParameterName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    const-string v3, "Found PreInstall property!"

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_0
    :goto_2
    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_3

    :catch_0
    move-object v2, v0

    :catch_1
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PreInstall file wasn\'t found: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_1
    :goto_3
    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p0
.end method

.method private AFInAppEventParameterName(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "appsFlyerFirstInstall"

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2d

    :try_start_0
    div-int/2addr v5, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eq v5, v4, :cond_3

    :goto_1
    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->afDebugLog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AppsFlyer: first launch detected"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    move-object v0, p1

    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsFlyer: first launch date: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    if-ne v1, v4, :cond_5

    return-object v0

    :cond_5
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public static AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "meta"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    :goto_1
    return-object v1
.end method

.method private AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1dSDK;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    const/16 v0, 0x50

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1zSDK;->afInfoLog()Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v0

    invoke-static {p1}, Lcom/appsflyer/internal/AFa1pSDK;->values(Landroid/content/Context;)Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object p1

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1bSDK;->AFKeystoreWrapper()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x5f

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    const/16 v2, 0x16

    :goto_2
    const-string v4, "api_name"

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Lcom/appsflyer/internal/AFd1bSDK;->values:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFd1bSDK;->values(Lcom/appsflyer/internal/AFe1zSDK;)V

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1bSDK;->values:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFd1bSDK;->values(Lcom/appsflyer/internal/AFe1zSDK;)V

    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :cond_6
    :goto_3
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1bSDK;->valueOf()V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    const/16 p1, 0x58

    :try_start_2
    div-int/2addr p1, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    throw p1

    :cond_7
    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1xSDK;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1xSDK;->afDebugLog()V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_1
    const-string v0, "preInstallName"

    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x63

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    const/16 p0, 0x5d

    :goto_1
    if-eq p0, v0, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    :try_start_3
    const-string p0, "Cannot set preinstall attribution data without a media source"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error parsing JSON for preinstall"

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1e

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static AFInAppEventParameterName(Landroid/content/SharedPreferences;)Z
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "sentSuccessfully"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_1

    return p0

    :cond_1
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1b

    if-nez v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return p0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method public static AFInAppEventType()Ljava/lang/String;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "AppUserId"

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    const/16 v1, 0x62

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_1

    return-object v0

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

.method private static AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x41

    if-ne v0, v1, :cond_0

    const/16 v1, 0x21

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/AFb1xSDK;)Ljava/util/Map;
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onDeepLinking:Ljava/util/Map;

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private static AFInAppEventType(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eq v2, v0, :cond_5

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v2, v1

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    const-string p0, "lr"

    goto :goto_1

    :cond_2
    const-string p0, "pr"

    goto :goto_1

    :cond_3
    const-string p0, "l"

    goto :goto_1

    :cond_4
    const-string p0, "p"

    :goto_1
    const-string v0, "sc_o"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private static AFInAppEventType(Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x24

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    if-eq v0, v2, :cond_2

    if-nez p0, :cond_1

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :cond_1
    sput-object p0, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    return-void

    :cond_2
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_b

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eq v0, v2, :cond_3

    goto :goto_7

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    const-string v3, "launchProtectEnabled"

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_4
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1xSDK;->afErrorLog()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    if-eq v0, v2, :cond_a

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const/16 v0, 0x45

    if-eqz p1, :cond_7

    const/16 v1, 0x60

    goto :goto_6

    :cond_7
    move v1, v0

    :goto_6
    if-eq v1, v0, :cond_8

    sget v0, Lcom/appsflyer/attribution/RequestError;->EVENT_TIMEOUT:I

    sget-object v1, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    const-string v0, "Allowing multiple launches within a 5 second time window."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAttributionFailureNative:J

    :goto_7
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Lcom/appsflyer/internal/AFb1xSDK$AFa1xSDK;

    invoke-direct {v2, p0, p1, v1}, Lcom/appsflyer/internal/AFb1xSDK$AFa1xSDK;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;B)V

    const-wide/16 v3, 0x0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_b
    const-string p1, "CustomerUserId not set, reporting is disabled"

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void
.end method

.method private static AFInAppEventType(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "onelinkVersion"

    const-string v2, "oneLinkSlug"

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "onelink_id"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x22

    if-eqz v2, :cond_2

    const/16 v2, 0x39

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    const-string v4, "onelink_ver"

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    const/16 p0, 0x13

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/SharedPreferences;Z)I

    move-result v1

    const/16 v2, 0x36

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    :goto_0
    if-eq v4, v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p1, Lcom/appsflyer/internal/AFe1vSDK;

    if-nez p1, :cond_2

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    move p1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v0

    :goto_2
    const-string v2, "newGPReferrerSent"

    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_7

    const/16 p2, 0x18

    if-ne v1, v3, :cond_3

    move v1, p2

    goto :goto_3

    :cond_3
    const/16 v1, 0x1a

    :goto_3
    if-eq v1, p2, :cond_4

    goto :goto_5

    :cond_4
    sget p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p2, p2, 0x71

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v1, 0x34

    if-nez p2, :cond_5

    const/16 p2, 0xe

    goto :goto_4

    :cond_5
    move p2, v1

    :goto_4
    if-eq p2, v1, :cond_6

    goto :goto_6

    :cond_6
    move p2, v3

    goto :goto_7

    :cond_7
    :goto_5
    sget p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p2, p2, 0x65

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p2, p2, 0x2

    :goto_6
    move p2, v0

    :goto_7
    if-nez p2, :cond_8

    move p2, v3

    goto :goto_8

    :cond_8
    move p2, v0

    :goto_8
    if-eq p2, v3, :cond_9

    goto :goto_a

    :cond_9
    sget p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p2, p2, 0xf

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p2, p2, 0x2

    const/16 p2, 0x1b

    if-eqz p1, :cond_a

    const/16 p1, 0x2c

    goto :goto_9

    :cond_a
    move p1, p2

    :goto_9
    if-eq p1, p2, :cond_d

    :goto_a
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_b

    move p1, v3

    goto :goto_b

    :cond_b
    move p1, v0

    :goto_b
    if-eqz p1, :cond_c

    const/16 p1, 0x10

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    throw p1

    :cond_c
    return v3

    :cond_d
    return v0
.end method

.method private static AFInAppEventType(Ljava/lang/String;Z)Z
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    return p0

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static AFKeystoreWrapper(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_3

    :cond_2
    add-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1qSDK;->afErrorLog()Z

    move-result p0

    const/16 p1, 0xe

    if-eqz p0, :cond_4

    move p0, p1

    goto :goto_1

    :cond_4
    const/16 p0, 0x2e

    :goto_1
    if-eq p0, p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    :goto_2
    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    return v0
.end method

.method public static AFKeystoreWrapper(Landroid/content/SharedPreferences;Z)I
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "appsFlyerCount"

    invoke-static {p0, v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;)Landroid/app/Application;
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method public static AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/appsflyer/internal/AFb1xSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFb1xSDK;

    const/16 v1, 0x51

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFb1xSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFb1xSDK;

    :goto_1
    return-object v0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "fb\\d*?://authorize.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "access_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eq v1, v3, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v4, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    sget v7, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v7, v7, 0x65

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v7, v7, 0x2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x4b

    if-eqz v8, :cond_5

    move v8, v9

    goto :goto_4

    :cond_5
    const/16 v8, 0x3d

    :goto_4
    if-eq v8, v9, :cond_9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_5

    :cond_6
    move v8, v3

    :goto_5
    if-eq v8, v3, :cond_7

    sget v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v8, v8, 0x5b

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v8, v8, 0x55

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v8, v8, 0x2

    goto :goto_6

    :cond_7
    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    :cond_c
    :goto_7
    return-object p0
.end method

.method private AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/appsflyer/internal/AFe1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1uSDK;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eq v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, v0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v2, v2, 0x77

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/appsflyer/internal/AFb1aSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v3, "appsFlyerCount"

    invoke-interface {v2, v3}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object v0

    iput-object p2, v0, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    if-eqz p2, :cond_3

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x5

    if-le p2, v2, :cond_3

    sget p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p2, p2, 0x39

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance p2, Lcom/appsflyer/internal/AFb1xSDK$AFa1xSDK;

    invoke-direct {p2, p0, v0, v1}, Lcom/appsflyer/internal/AFb1xSDK$AFa1xSDK;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;B)V

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "use cached AndroidId: "

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "deviceTrackingDisabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo p1, "true"

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    new-instance v4, Lcom/appsflyer/internal/AFc1ySDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/appsflyer/internal/AFc1ySDK;-><init>(Landroid/content/SharedPreferences;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1qSDK;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1oSDK;->valueOf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "imei"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "collectAndroidId"

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "androidIdCached"

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android_id"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog:Ljava/lang/String;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1oSDK;->valueOf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFLogger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    move-object v3, v5

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog:Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v3, v0

    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    invoke-interface {v4, v2, v3}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string v0, "Android ID was not collected."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1zSDK;->values(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventType:Ljava/lang/Boolean;

    const-string v2, "isManual"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string/jumbo v2, "val"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1uSDK;->values:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    const-string v1, "isLat"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string p1, "oaid"

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context must be set via setContext method before calling this dependency."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    const-string v3, "prev_event_name"

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "prev_event_timestamp"

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v5, -0x1

    invoke-interface {p0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "prev_event"

    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    :cond_1
    :try_start_2
    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-interface {p0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    :try_start_3
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    const-string p1, "Error while processing previous event."

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static AFKeystoreWrapper(Landroid/content/Context;ZLjava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ro.product.cpu.abi"

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro.product.cpu.abi2"

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os.arch"

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_display_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x39

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p1, v1, :cond_3

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    const/4 v1, 0x2

    rem-int/2addr p1, v1

    invoke-static {p0, v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;Ljava/util/Map;)V

    if-gt p3, v1, :cond_3

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    const/16 p3, 0x31

    if-nez p1, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    const/16 p1, 0x57

    :goto_1
    if-eq p1, p3, :cond_2

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1cSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1cSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1cSDK;->valueOf()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1cSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1cSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1cSDK;->valueOf()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/16 p1, 0x15

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1dSDK;->AFKeystoreWrapper(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "dim"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "deviceData"

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 12

    iget-object v0, p1, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    const/16 v1, 0x39

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x4a

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v2, v1, :cond_16

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFd1gSDK;->values()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "sendWithEvent from activity: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->valueOf()Z

    move-result v2

    instance-of v5, p1, Lcom/appsflyer/internal/AFe1uSDK;

    instance-of v6, p1, Lcom/appsflyer/internal/AFe1vSDK;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Lcom/appsflyer/internal/AFa1tSDK;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "appsflyerKey"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    move v8, v10

    :goto_1
    if-eq v8, v10, :cond_3

    goto/16 :goto_b

    :cond_3
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v8

    if-nez v8, :cond_4

    sget v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v8, v8, 0x9

    rem-int/lit16 v11, v8, 0x80

    sput v11, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v8, v4

    const-string v8, "AppsFlyerLib.sendWithEvent"

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_4
    invoke-static {v1, v9}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/SharedPreferences;Z)I

    move-result v1

    if-nez v6, :cond_9

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/16 v5, 0x4b

    if-eqz v2, :cond_6

    const/16 v6, 0x29

    goto :goto_2

    :cond_6
    move v6, v5

    :goto_2
    if-eq v6, v5, :cond_8

    if-ge v1, v4, :cond_7

    sget-object v5, Lcom/appsflyer/internal/AFb1xSDK;->init:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/appsflyer/internal/AFb1xSDK;->getLevel:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_8
    sget-object v5, Lcom/appsflyer/internal/AFb1xSDK;->afWarnLog:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v5, Lcom/appsflyer/internal/AFb1xSDK;->AFVersionDeclaration:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&buildnumber=6.9.2"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&channel="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_a
    invoke-direct {p0, v7}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/util/Map;)V

    new-instance v0, Lcom/appsflyer/internal/AFb1xSDK$AFa1wSDK;

    invoke-virtual {p1, v5}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    invoke-direct {v0, p0, p1, v9}, Lcom/appsflyer/internal/AFb1xSDK$AFa1wSDK;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;B)V

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1xSDK;->afInfoLog()[Lcom/appsflyer/internal/AFe1hSDK;

    move-result-object p1

    array-length v1, p1

    move v2, v9

    :goto_5
    const/16 v5, 0x56

    if-ge v9, v1, :cond_b

    const/16 v6, 0x3c

    goto :goto_6

    :cond_b
    move v6, v5

    :goto_6
    if-eq v6, v5, :cond_d

    aget-object v5, p1, v9

    iget-object v6, v5, Lcom/appsflyer/internal/AFe1hSDK;->afRDLog:Lcom/appsflyer/internal/AFe1hSDK$AFa1zSDK;

    sget-object v7, Lcom/appsflyer/internal/AFe1hSDK$AFa1zSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1hSDK$AFa1zSDK;

    if-ne v6, v7, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Failed to get "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/appsflyer/internal/AFe1hSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " referrer, wait ..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v2, v4

    move v2, v10

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_d
    iget-boolean p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseError:Z

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1xSDK;->AFLogger()Z

    move-result p1

    const/16 v1, 0x2e

    if-nez p1, :cond_e

    move p1, v1

    goto :goto_7

    :cond_e
    const/16 p1, 0x24

    :goto_7
    if-eq p1, v1, :cond_f

    goto :goto_8

    :cond_f
    const-string p1, "fetching Facebook deferred AppLink data, wait ..."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    move v9, v10

    goto :goto_9

    :cond_10
    :goto_8
    move v9, v2

    :goto_9
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFd1gSDK;->AFKeystoreWrapper()Z

    move-result p1

    if-eqz p1, :cond_11

    move v9, v10

    :cond_11
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    if-eqz v9, :cond_13

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_12

    const-wide/16 v1, 0x1f4

    goto :goto_a

    :cond_12
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_13
    const-wide/16 v1, 0x0

    :goto_a
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_14
    :goto_b
    const-string v0, "Not sending data yet, waiting for dev key"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_15

    sget v0, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v1, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_15
    return-void

    :cond_16
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr p1, v4

    const-string v0, "sendWithEvent - got null context. skipping event/launch."

    if-nez p1, :cond_17

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1tSDK;)V

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private AFKeystoreWrapper(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectAndroidIdForceByUser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v3, "collectIMEIForceByUser"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    if-nez v0, :cond_a

    const-string v0, "advertiserId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x18

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    const/16 v0, 0x62

    :goto_3
    if-eq v0, v3, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog:Ljava/lang/String;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1oSDK;->valueOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog:Ljava/lang/String;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1oSDK;->valueOf(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1e

    :try_start_1
    div-int/2addr v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_7

    :goto_4
    :try_start_2
    const-string v0, "android_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    if-eq v2, v1, :cond_6

    goto :goto_5

    :cond_6
    const-string/jumbo v0, "validateGaidAndIMEI :: removing: android_id"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1oSDK;->valueOf(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_9

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "imei"

    if-eqz v0, :cond_8

    :try_start_3
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "validateGaidAndIMEI :: removing: imei"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 p1, 0x0

    :try_start_4
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_9
    :goto_6
    return-void

    :catchall_1
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    const-string v0, "failed to remove IMEI or AndroidID key from params; "

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static AFKeystoreWrapper(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    if-ne p0, p1, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    const-string p1, "scheduleJob failed with Exception"

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "scheduleJob failed with RejectedExecutionException Exception"

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static AFKeystoreWrapper(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_3

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x47

    if-eqz p0, :cond_1

    const/16 p0, 0x45

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-eq p0, v0, :cond_2

    const/16 p0, 0x53

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    return v1

    :cond_3
    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    move p0, v0

    goto :goto_2

    :cond_4
    move p0, v1

    :goto_2
    if-eq p0, v0, :cond_5

    return v0

    :cond_5
    const/16 p0, 0x10

    :try_start_1
    div-int/2addr p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private AFLogger()Z
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v0, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x38

    :goto_0
    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->onDeepLinking:Ljava/util/Map;

    const/16 v2, 0x1a

    if-eqz v1, :cond_1

    const/16 v3, 0x4a

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eq v3, v2, :cond_4

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    return v1

    :cond_4
    :goto_3
    return v4

    :cond_5
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static AFLogger(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectAndroidIdForceByUser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v3, "collectIMEIForceByUser"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    move v0, v2

    :goto_2
    const/16 v3, 0x2f

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    const/16 v0, 0x3b

    :goto_3
    if-eq v0, v3, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    move p0, v2

    goto :goto_4

    :cond_5
    move p0, v1

    :goto_4
    if-eq p0, v1, :cond_6

    :goto_5
    return v1

    :cond_6
    return v2
.end method

.method private AFLogger$LogLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "ro.appsflyer.preinstall.path"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "AF_PRE_INSTALL_PATH"

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/io/File;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "/data/local/tmp/pre_install.appsflyer"

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/io/File;)Z

    move-result v1

    const/16 v4, 0x3c

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    if-eq v1, v4, :cond_4

    const-string v0, "/etc/pre_install.appsflyer"

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-object v2

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    const/16 v0, 0x5f

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :cond_6
    return-object p1

    :cond_7
    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/io/File;)Z

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method private AFVersionDeclaration(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preInstallName"

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/16 v4, 0x3c

    :goto_0
    if-eq v4, v3, :cond_9

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->afDebugLog(Landroid/content/Context;)Z

    move-result v0

    const/16 v3, 0x4c

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eq v0, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFLogger$LogLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/16 v0, 0x24

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    const-string v0, "AF_PRE_INSTALL_NAME"

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_2
    const/16 v0, 0x9

    if-eqz v2, :cond_5

    const/4 v3, 0x6

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    if-eq v3, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object p1, v2

    :goto_4
    const/16 v0, 0x13

    if-eqz p1, :cond_7

    const/16 v2, 0x3a

    goto :goto_5

    :cond_7
    move v2, v0

    :goto_5
    if-eq v2, v0, :cond_8

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object p1

    :cond_9
    return-object v2
.end method

.method private afDebugLog()V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFc1bSDK;->afRDLog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1zSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v2, v0}, Lcom/appsflyer/internal/AFc1bSDK;-><init>(Lcom/appsflyer/internal/AFc1zSDK;)V

    iget-object v0, v1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v3, v1, v2}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static afDebugLog(Landroid/content/Context;)Z
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5f

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    const-string v2, "appsFlyerCount"

    if-eq v0, v1, :cond_5

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eq p0, v0, :cond_2

    return v1

    :cond_2
    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v2, 0x61

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    const/16 p0, 0x34

    :goto_2
    if-eq p0, v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0

    :cond_5
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static afErrorLog(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/appsflyer/internal/AFb1wSDK;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    const-string v1, "OPPO device found"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_2

    const-string v0, "keyPropDisableAFKeystore"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OS SDK is="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; use KeyStore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    new-instance v0, Lcom/appsflyer/AFKeystoreWrapper;

    invoke-direct {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->valueOf()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1uSDK;->values(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/appsflyer/AFKeystoreWrapper;->values:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:I

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:I

    const-string v1, "Deleting key with alias: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->valueOf:Ljava/security/KeyStore;

    invoke-virtual {v3, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1

    throw p0
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " occurred"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName(Ljava/lang/String;)V

    :goto_2
    const-string p0, "KSAppsFlyerId"

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KSAppsFlyerRICounter"

    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->values()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "OS SDK is="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; no KeyStore usage"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    return-void
.end method

.method private afErrorLog()Z
    .locals 11

    iget-wide v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAttributionFailureNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAttributionFailureNative:J

    sub-long/2addr v3, v5

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v0, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v5, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAttributionFailureNative:J

    invoke-static {v0, v5, v6}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyer2dXConversionCallback:J

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iget-wide v6, p0, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionFailureNative:J

    cmp-long v6, v3, v6

    const/4 v7, 0x1

    if-gez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    const/4 v8, 0x3

    if-eq v6, v7, :cond_2

    sget v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v6, v6, 0x25

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v6

    if-nez v6, :cond_2

    sget v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v6, v6, 0x3d

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v6, v1

    const-string v9, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms"

    if-eqz v6, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x5

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v5, v10, v2

    aput-object v0, v10, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v6

    iget-wide v3, p0, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionFailureNative:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-static {v1, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v2

    :cond_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v2

    aput-object v0, v10, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v1

    iget-wide v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionFailureNative:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-static {v6, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v7

    :cond_2
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v6

    if-nez v6, :cond_6

    sget v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/2addr v6, v7

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v6, v1

    const/16 v9, 0xc

    if-eqz v6, :cond_3

    move v6, v9

    goto :goto_1

    :cond_3
    const/16 v6, 0x63

    :goto_1
    const-string v10, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)"

    if-eq v6, v9, :cond_4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    aput-object v0, v8, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v6, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v0, v6, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v1, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v0, v1

    const-string v0, "Sending first launch for this session!"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return v2
.end method

.method private afInfoLog(Landroid/content/Context;)V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onDeepLinking:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/appsflyer/internal/AFb1xSDK$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/appsflyer/internal/AFb1xSDK$3;-><init>(Lcom/appsflyer/internal/AFb1xSDK;J)V

    :try_start_0
    const-string v0, "com.facebook.FacebookSdk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sdkInitialize"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.facebook.applinks.AppLinkData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.facebook.applinks.AppLinkData$CompletionHandler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "fetchDeferredAppLinkData"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v6

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v8, Lcom/appsflyer/internal/AFa1oSDK$5;

    invoke-direct {v8, v0, v2}, Lcom/appsflyer/internal/AFa1oSDK$5;-><init>(Ljava/lang/Class;Lcom/appsflyer/internal/AFa1oSDK$AFa1zSDK;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v1, v10, v6

    invoke-static {v0, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v8, "facebook_app_id"

    const-string/jumbo v10, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0xf

    if-eqz v8, :cond_0

    const/16 v8, 0x1c

    goto :goto_0

    :cond_0
    move v8, v10

    :goto_0
    if-eq v8, v10, :cond_1

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr p1, v9

    :try_start_1
    const-string p1, "Facebook app id not defined in resources"

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1oSDK$AFa1zSDK;->values(Ljava/lang/String;)V

    return-void

    :cond_1
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object v1, v7, v3

    aput-object v0, v7, v9

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr p1, v9

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1oSDK$AFa1zSDK;->values(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1oSDK$AFa1zSDK;->values(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1oSDK$AFa1zSDK;->values(Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1oSDK$AFa1zSDK;->values(Ljava/lang/String;)V

    return-void
.end method

.method private afInfoLog()[Lcom/appsflyer/internal/AFe1hSDK;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1zSDK;->init()Lcom/appsflyer/internal/AFe1iSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFe1hSDK;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private static afRDLog(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x55

    :try_start_1
    div-int/2addr p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    return-object v0

    :cond_2
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v2
.end method

.method private static afRDLog()Ljava/lang/String;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "appid"

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1c

    if-nez v1, :cond_0

    const/16 v1, 0x5c

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static afRDLog(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0x8000

    and-int/2addr v0, v1

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "appsflyer_backup_rules"

    const-string/jumbo v3, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x24

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    const/16 p0, 0x42

    :goto_1
    if-eq p0, v0, :cond_2

    const-string p0, "\'allowBackup\' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application\'s <full-backup-content> rules"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_2
    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x2f

    if-eqz p0, :cond_3

    const/16 p0, 0x21

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    const-string v1, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data"

    if-eq p0, v0, :cond_4

    :try_start_2
    invoke-static {v1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    const/4 p0, 0x1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "checkBackupRules Exception: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    return-void
.end method

.method private afWarnLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "INSTALL_STORE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, 0x0

    if-eq v2, v4, :cond_5

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->afDebugLog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eq v0, v4, :cond_4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->getLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->getLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v5, v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    invoke-interface {p1, v1, v5}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_5
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    const/16 v1, 0x31

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3e

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "api_store_value"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0x59

    :goto_1
    if-eq v2, v1, :cond_2

    const-string v0, "AF_STORE"

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method private init(Landroid/content/Context;)J
    .locals 8

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppsFlyerTimePassedSincePrevLaunch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    invoke-interface {p1, v1, v6, v7}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    cmp-long p1, v4, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    return-wide v0

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sub-long/2addr v6, v4

    const-wide/16 v0, 0x3e8

    div-long/2addr v6, v0

    return-wide v6
.end method

.method private static onAppOpenAttributionNative(Landroid/content/Context;)Z
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    goto/16 :goto_8

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const-string v3, "Failed collecting ivc data"

    if-eqz v2, :cond_9

    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v4, v2

    move v5, v1

    :goto_2
    const/16 v6, 0xc

    if-ge v5, v4, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    if-eq v7, v6, :cond_4

    return v1

    :cond_4
    aget-object v6, v2, v5

    invoke-virtual {p0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v0

    goto :goto_4

    :cond_5
    move v7, v1

    :goto_4
    if-eq v7, v0, :cond_6

    goto :goto_6

    :cond_6
    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_7

    move v6, v0

    goto :goto_5

    :cond_7
    move v6, v1

    :goto_5
    if-eqz v6, :cond_8

    return v0

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_9
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p0, v0, :cond_d

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_c

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v2, v2, 0x1f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/NetworkInterface;

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->isUp()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 p0, 0x0

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_c
    :try_start_4
    const-string/jumbo v0, "tun0"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return p0

    :catch_1
    move-exception p0

    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_8
    return v1
.end method

.method private static onInstallConversionFailureNative(Landroid/content/Context;)F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "level"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "scale"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x21

    if-eq v1, v3, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    const/16 v4, 0x52

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v0, :cond_1

    goto :goto_2

    :cond_1
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-ne p0, v3, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v6

    :goto_1
    if-eqz v0, :cond_3

    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    add-int/lit8 v4, v4, 0x15

    rem-int/lit16 p0, v4, 0x80

    sput p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    const/high16 p0, 0x42480000    # 50.0f

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v5, v6

    :cond_4
    if-eq v5, v6, :cond_5

    return p0

    :cond_5
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return v0
.end method

.method private static valueOf(Landroid/content/SharedPreferences;Z)I
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "appsFlyerInAppEventCount"

    invoke-static {p0, v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return p0
.end method

.method public static declared-synchronized valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    const-class v0, Lcom/appsflyer/internal/AFb1xSDK;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1xSDK;->onResponse:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "appsflyer-data"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v1, Lcom/appsflyer/internal/AFb1xSDK;->onResponse:Landroid/content/SharedPreferences;

    :goto_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object p0

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponse:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFb1xSDK;)Lcom/appsflyer/internal/AFc1xSDK;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2a

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eq v0, v2, :cond_1

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static valueOf(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v0, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x46

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x60

    :goto_0
    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_6

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    const-string v4, "af"

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_3

    :try_start_2
    const-string v3, "Push Notification received af payload = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move-object v3, v2

    goto :goto_4

    :cond_4
    :try_start_3
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, p0

    move-object p0, v0

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-object v3
.end method

.method private valueOf(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x63

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eqz p1, :cond_5

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-ne v1, v2, :cond_4

    iget-object v0, v4, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    goto :goto_3

    :cond_4
    iget-object p1, v4, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFb1aSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method private static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    if-eq v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method public static valueOf(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eq v5, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :goto_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v6, v3

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v8, 0x5f

    if-eqz v7, :cond_2

    const/16 v9, 0x24

    goto :goto_3

    :cond_2
    move v9, v8

    :goto_3
    if-eq v9, v8, :cond_5

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_4

    :cond_3
    move v6, v4

    :goto_4
    if-eq v6, v4, :cond_4

    sget v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v6, v6, 0x5b

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v6, v6, 0x2

    const/16 v6, 0xa

    :try_start_3
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto :goto_5

    :cond_4
    const-string v6, ""

    :goto_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v6, v4

    goto :goto_2

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    :catchall_0
    move-exception v3

    goto :goto_6

    :catchall_1
    move-exception v3

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v3

    move-object v2, v1

    move-object v5, v2

    :goto_6
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Could not read connection response from: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :goto_8
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    :cond_7
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    :try_start_8
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p0

    throw p0

    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string/jumbo v1, "string_response"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    return-object p0

    :catch_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_5
    move-exception p0

    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    goto :goto_a

    :catchall_6
    move-exception v0

    goto :goto_b

    :cond_9
    :goto_a
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_c

    :goto_b
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    :cond_a
    :goto_c
    throw p0
.end method

.method public static valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static valueOf()V
    .locals 2

    const/16 v0, 0x22

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerConversionListener:[C

    const-wide v0, -0x4b1b6e8e49b8f5dfL    # -6.710669235007435E-54

    sput-wide v0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerInAppPurchaseValidatorListener:J

    return-void

    nop

    :array_0
    .array-data 2
        0x460ds
        0x4c2bs
        0x5271s
        0x587bs
        0x6e81s
        0x74a4s
        0x7acfs
        0xf8s
        0x1710s
        0x1d24s
        0x234bs
        0x2977s
        0x31s
        0x1aabs
        0x109as
        0xeeas
        0x4c4s
        0x3229s
        0x66s
        0xa48s
        0x1430s
        0x1e10s
        0x28f0s
        0x32e9s
        0x3ca7s
        0x4692s
        0x5166s
        0x5b4as
        0x6522s
        0x6f2fs
        0x79eds
        -0x7c27s
        -0x7255s
        0x2es
    .end array-data
.end method

.method private static valueOf(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "btl"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appsflyer/internal/AFa1xSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFa1xSDK;

    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/AFa1xSDK;->AFInAppEventType(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;

    move-result-object p0

    iget v0, p0, Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;->AFKeystoreWrapper:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;->values:Ljava/lang/String;

    const/16 v1, 0x44

    if-eqz v0, :cond_1

    const/16 v0, 0x49

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/appsflyer/internal/AFa1xSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFa1xSDK;

    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/AFa1xSDK;->AFInAppEventType(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;

    move-result-object p0

    iget v0, p0, Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;->AFKeystoreWrapper:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;->values:Ljava/lang/String;

    const/16 v3, 0x3d

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    if-eq v1, v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/appsflyer/internal/AFa1xSDK$AFa1zSDK;->values:Ljava/lang/String;

    const-string v0, "btch"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    :cond_5
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static valueOf(Ljava/util/Map;Lcom/appsflyer/internal/AFd1bSDK;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFd1bSDK;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/appsflyer/internal/AFd1bSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p1, Lcom/appsflyer/internal/AFd1bSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object p1, p1, Lcom/appsflyer/internal/AFd1bSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v1, "gcd"

    invoke-interface {p1, v1}, Lcom/appsflyer/internal/AFd1qSDK;->values(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/16 v2, 0x4c

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v2, 0x59

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    const/16 p1, 0x5f

    :goto_1
    if-eq p1, v2, :cond_3

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    :goto_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static synthetic valueOf(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x58

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    if-eq p0, p1, :cond_1

    return-void

    :cond_1
    const/16 p0, 0x1a

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private values(Ljava/util/Map;)Lcom/appsflyer/internal/AFd1wSDK$AFa1ySDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appsflyer/internal/AFd1wSDK$AFa1ySDK;"
        }
    .end annotation

    new-instance v0, Lcom/appsflyer/internal/AFb1xSDK$2;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK$2;-><init>(Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v1, 0x20

    if-eqz p1, :cond_0

    const/16 p1, 0x27

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p1, v1, :cond_1

    const/16 p1, 0x63

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-object v0
.end method

.method private static values(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x47

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v2

    :goto_0
    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    return-object p0

    :cond_1
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private synthetic values(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_0
    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    new-instance v1, Lcom/appsflyer/internal/AFc1ySDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFc1ySDK;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFa1sSDK;->valueOf(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "ddl_sent"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 p1, 0x0

    const-string p2, "No direct deep link"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, p2, p1}, Lcom/appsflyer/internal/AFa1sSDK;->AFKeystoreWrapper(Ljava/util/Map;Landroid/content/Intent;Landroid/content/Context;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context must be set via setContext method before calling this dependency."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/appsflyer/internal/AFe1sSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1sSDK;-><init>()V

    const/16 v1, 0x3f

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x1c

    :goto_0
    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    :goto_1
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:Ljava/lang/String;

    iput-object p3, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    instance-of p2, p1, Landroid/app/Activity;

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    sget p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p2, p2, 0x5d

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v1, 0x37

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    const/16 p2, 0x27

    :goto_2
    if-eq p2, v1, :cond_3

    check-cast p1, Landroid/app/Activity;

    goto :goto_3

    :cond_3
    check-cast p1, Landroid/app/Activity;

    :try_start_0
    throw p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    move-object p1, p3

    :goto_3
    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/app/Activity;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    return-void

    :cond_5
    :try_start_1
    invoke-super {p3}, Ljava/lang/Object;->hashCode()I

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method private values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    new-instance v0, Lcom/appsflyer/internal/AFe1pSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/appsflyer/internal/AFe1sSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1sSDK;-><init>()V

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    :goto_2
    const/16 v1, 0x47

    if-eqz p1, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    const/16 v2, 0x51

    :goto_3
    if-eq v2, v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, v0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    :goto_4
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:Ljava/lang/String;

    iput-object p3, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    iput-object p4, v0, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    iput-object p5, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;)V

    return-void
.end method

.method public static values(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "network"

    const-string v2, "disableCollectNetworkData"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2, v3}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/appsflyer/internal/AFa1iSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFa1iSDK;

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1iSDK;->values(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;

    move-result-object p0

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->values:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/appsflyer/internal/AFa1iSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFa1iSDK;

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1iSDK;->values(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;

    move-result-object p0

    iget-object v2, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->values:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/16 v2, 0x40

    if-eqz v1, :cond_1

    const/16 v1, 0x24

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v2, "operator"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v1, 0x8

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const/16 v0, 0x61

    :goto_2
    if-eq v0, v1, :cond_4

    goto :goto_4

    :cond_4
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->AFInAppEventType:Ljava/lang/String;

    const/16 v1, 0x4c

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->AFInAppEventType:Ljava/lang/String;

    if-eqz v0, :cond_6

    :goto_3
    iget-object p0, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1ySDK;->AFInAppEventType:Ljava/lang/String;

    const-string v0, "carrier"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    return-void
.end method

.method private static values(Ljava/lang/String;Z)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x13

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static values(Lorg/json/JSONObject;)V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v3

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    move v7, v3

    goto :goto_2

    :cond_0
    move v7, v5

    :goto_2
    if-eq v7, v5, :cond_1

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v2, v4

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_3
    move-object v6, v2

    :catch_1
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    sget v7, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v7, v7, 0x41

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v7, v4

    if-nez v7, :cond_5

    move v7, v5

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_3
    if-eqz v7, :cond_6

    const/16 v7, 0x21

    :try_start_1
    div-int/2addr v7, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_a

    goto :goto_4

    :catchall_0
    move-exception p0

    throw p0

    :cond_6
    if-nez v6, :cond_a

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :try_start_2
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v9, v3

    :goto_5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v11, 0x56

    if-ge v9, v10, :cond_7

    move v10, v4

    goto :goto_6

    :cond_7
    move v10, v11

    :goto_6
    if-eq v10, v11, :cond_4

    sget v10, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v10, v10, 0x55

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v10, v4

    :try_start_3
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    sget v10, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v10, v10, 0xd

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v10, v4

    :try_start_4
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    move v10, v5

    goto :goto_7

    :cond_8
    move v10, v3

    :goto_7
    if-eqz v10, :cond_3

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    cmp-long v6, v10, v12

    const/16 v10, 0x1e

    if-nez v6, :cond_9

    move v6, v10

    goto :goto_8

    :cond_9
    const/16 v6, 0x3f

    :goto_8
    if-eq v6, v10, :cond_3

    add-int/lit8 v9, v9, 0x1

    sget v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v6, v6, 0x67

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v6, v4

    move-object v6, v7

    goto :goto_5

    :cond_a
    const/4 v0, 0x6

    if-eqz v6, :cond_b

    const/16 v1, 0x31

    goto :goto_9

    :cond_b
    move v1, v0

    :goto_9
    if-eq v1, v0, :cond_c

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v0, v4

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method public static values(Landroid/content/Context;)Z
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x3f

    const/16 v4, 0x37

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eq v2, v3, :cond_3

    sget p0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    move p0, v4

    goto :goto_1

    :cond_1
    const/16 p0, 0x24

    :goto_1
    if-eq p0, v4, :cond_2

    return v0

    :cond_2
    return v1

    :catchall_0
    move-exception v2

    const-string v3, "WARNING:  Google play services is unavailable. "

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.google.android.gms"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string v0, "WARNING:  Google Play Services is unavailable. "

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method static synthetic values(Lcom/appsflyer/internal/AFb1xSDK;Z)Z
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->onConversionDataSuccess:Z

    if-eqz v0, :cond_1

    const/16 p0, 0x4a

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    :goto_1
    return p1
.end method


# virtual methods
.method public final AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    new-instance v0, Lcom/appsflyer/internal/AFc1ySDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFc1ySDK;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context must be set via setContext method before calling this dependency."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final AFInAppEventParameterName(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    const-string v2, "appsflyer_preinstall"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    :cond_1
    const-string v0, "****** onReceive called *******"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Play store referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/16 v1, 0xb

    if-eqz p2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    if-eq v2, v1, :cond_3

    goto :goto_2

    :cond_3
    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "AF_REFERRER"

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/appsflyer/AppsFlyerProperties;->valueOf:Ljava/lang/String;

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->values()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "onReceive: isLaunchCalled"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1dSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1dSDK;)V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/appsflyer/AppsFlyerProperties;->valueOf:Ljava/lang/String;

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties;->values()Z

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_6
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1f

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "received a new (extra) referrer: "

    const-string v3, "extraReferrers"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    goto :goto_2

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x5

    cmp-long v5, v5, v7

    const/16 v6, 0x16

    if-gez v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    const/16 v5, 0x4d

    :goto_3
    if-eq v5, v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    const-wide/16 v5, 0x4

    cmp-long v0, v0, v5

    if-ltz v0, :cond_5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_1
    invoke-static {v2}, Lcom/appsflyer/internal/AFb1xSDK;->values(Lorg/json/JSONObject;)V

    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t save referrer - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    return-void
.end method

.method public final AFInAppEventParameterName()Z
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const-string/jumbo v0, "waitForCustomerId"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x39

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4c

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    :goto_1
    if-eq v0, v2, :cond_2

    goto :goto_2

    :cond_2
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method public final AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4f

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eq v4, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_3

    move v1, v3

    :cond_3
    if-eq v1, v3, :cond_4

    goto :goto_2

    :cond_4
    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :goto_2
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1aSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_6
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v0, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    const/16 v3, 0x4f

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eqz p1, :cond_3

    :goto_0
    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    const/4 v1, 0x2

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p1

    throw p1

    :cond_1
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v1, 0x2d

    if-eqz p1, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eq v3, v1, :cond_3

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    :cond_3
    const-string v0, "af_deeplink"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    move-result-object v3

    iget-object v4, v3, Lcom/appsflyer/internal/AFa1sSDK;->values:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v3, Lcom/appsflyer/internal/AFa1sSDK;->afRDLog:Ljava/util/Map;

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, v3, Lcom/appsflyer/internal/AFa1sSDK;->values:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, v3, Lcom/appsflyer/internal/AFa1sSDK;->afRDLog:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appended_query_params"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_5
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/appsflyer/internal/AFd1wSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3, p3}, Lcom/appsflyer/internal/AFd1wSDK;-><init>(Lcom/appsflyer/internal/AFc1zSDK;Ljava/util/UUID;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1wSDK;->AFLogger$LogLevel()Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v2, v2, 0x2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isBrandedDomain"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {p1, v0, p3}, Lcom/appsflyer/internal/AFb1wSDK;->valueOf(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)Ljava/util/Map;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1wSDK;->afWarnLog()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/util/Map;)Lcom/appsflyer/internal/AFd1wSDK$AFa1ySDK;

    move-result-object p1

    iput-object p1, v1, Lcom/appsflyer/internal/AFd1wSDK;->afRDLog:Lcom/appsflyer/internal/AFd1wSDK$AFa1ySDK;

    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p1

    iget-object p2, p1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {p3, p1, v1}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1hSDK;->values(Ljava/util/Map;)V

    return-void
.end method

.method final AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p1, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    sget v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v4, v4, 0x53

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    sget v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v4, v4, 0x55

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eq v4, v2, :cond_1

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventType(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v4, v4, 0xf

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventType(Landroid/app/Activity;)Landroid/net/Uri;

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    move-object p2, v1

    :goto_1
    iget-object v4, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v4

    iget-object v4, v4, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    const/16 v5, 0x61

    if-nez v4, :cond_3

    const/16 v4, 0x25

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    if-eq v4, v5, :cond_6

    sget p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p2, p2, 0x69

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p2, p2, 0x2

    const-string v0, "[LogEvent/Launch] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    if-nez p2, :cond_4

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const/16 p2, 0x15

    :try_start_1
    div-int/2addr p2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_5

    goto :goto_3

    :catchall_1
    move-exception p1

    throw p1

    :cond_4
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_5

    :goto_3
    sget p2, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v0, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :goto_4
    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    move-object v1, v0

    :goto_5
    iput-object v1, p1, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    iput-object p2, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;)V

    return-void
.end method

.method final AFInAppEventType(Ljava/lang/ref/WeakReference;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "app went to background"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1zSDK;->afInfoLog()Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v1

    iget-wide v1, v1, Lcom/appsflyer/internal/AFd1bSDK;->AFLogger$LogLevel:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v4

    iget-object v4, v4, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    const/4 v5, 0x2

    if-nez v4, :cond_1

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr p1, v5

    const-string p1, "[callStats] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v6, "KSAppsFlyerId"

    invoke-static {v6}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    const-string v8, "deviceTrackingDisabled"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v7, v7, 0x6f

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v7, v5

    const-string/jumbo v7, "true"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/internal/AFb1zSDK;->valueOf(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    move v10, v8

    goto :goto_0

    :cond_3
    move v10, v9

    :goto_0
    if-eqz v10, :cond_6

    sget v10, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v10, v10, 0x41

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v10, v5

    if-nez v10, :cond_4

    move v10, v9

    goto :goto_1

    :cond_4
    move v10, v8

    :goto_1
    const-string v11, "amazon_aid_limit"

    const-string v12, "amazon_aid"

    if-eqz v10, :cond_5

    iget-object v10, v7, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v3, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v7, Lcom/appsflyer/internal/AFa1uSDK;->values:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object p1, v7, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v3, v12, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v7, Lcom/appsflyer/internal/AFa1uSDK;->values:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_6
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    const-string v10, "advertiserId"

    invoke-virtual {v7, v10}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "app_id"

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "devkey"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1uSDK;->values(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "uid"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "time_in_app"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "statType"

    const-string/jumbo v2, "user_closed_app"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/SharedPreferences;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch_counter"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_8

    move p1, v8

    goto :goto_3

    :cond_8
    move p1, v9

    :goto_3
    if-eq p1, v8, :cond_9

    const-string v6, ""

    :cond_9
    const-string p1, "originalAppsflyerId"

    invoke-interface {v3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->onConversionDataSuccess:Z

    if-eqz p1, :cond_a

    new-instance p1, Lcom/appsflyer/internal/AFe1tSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFe1tSDK;-><init>()V

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    iput-boolean v0, p1, Lcom/appsflyer/internal/AFe1wSDK;->afWarnLog:Z

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1aSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/internal/AFb1xSDK;->afDebugLog:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFe1tSDK;

    new-instance v0, Lcom/appsflyer/internal/AFd1uSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFd1uSDK;-><init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1zSDK;)V

    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p1

    iget-object v1, p1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v2, p1, v0}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    const-string p1, "Stats call is disabled, ignore ..."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method public final AFKeystoreWrapper(Landroid/content/Context;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eq v3, v2, :cond_1

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_1

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x37

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final varargs addPushNotificationDeepLinkPath([Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1sSDK;->afErrorLog:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1sSDK;->afErrorLog:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final anonymizeUser(Z)V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "anonymizeUser"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "deviceTrackingDisabled"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x1c

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eq p1, v0, :cond_1

    const/16 p1, 0x35

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method public final appendParametersToDeepLinkingURL(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    move-result-object v0

    iput-object p1, v0, Lcom/appsflyer/internal/AFa1sSDK;->values:Ljava/lang/String;

    iput-object p2, v0, Lcom/appsflyer/internal/AFa1sSDK;->afRDLog:Ljava/util/Map;

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final enableFacebookDeferredApplinks(Z)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x41

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseError:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x5c

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "getAppsFlyerUID"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eqz p1, :cond_3

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0xf

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x3d

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0xa

    :goto_1
    if-eq v2, v3, :cond_2

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v2, 0x25

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1uSDK;->values(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/AFb1ySDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFb1ySDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFc1zSDK;)V

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1ySDK;->values()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "Could not collect facebook attribution id. "

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 5

    const-string v0, "custom_host"

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eq v3, v2, :cond_3

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v3, v3, 0x47

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "appsflyer.com"

    return-object v0
.end method

.method public final getHostPrefix()Ljava/lang/String;
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "custom_host_prefix"

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    return-object v0

    :cond_1
    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x22

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/16 v1, 0x1b

    :goto_1
    if-eq v1, v2, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final getOutOfStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x39

    :goto_0
    if-eq v2, v1, :cond_3

    const-string v0, "AF_STORE"

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v1, v0, :cond_2

    const-string p1, "No out-of-store value set"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    :cond_2
    return-object p1

    :cond_3
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1zSDK;->afWarnLog()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "getSdkVersion"

    invoke-virtual {v1, v3, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-nez v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_1

    return-object v0

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

.method public final init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    .locals 10

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseNative:Z

    const/16 v1, 0x19

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr p1, v2

    return-object p0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseNative:Z

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v1

    iput-object p1, v1, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventType(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const/16 v3, 0x1a

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v3, :cond_c

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    iput-object v3, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    iget-object v3, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    const/4 v4, 0x0

    if-eqz p3, :cond_5

    sget v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v5, v5, 0x73

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v5, v2

    const/16 v6, 0x2e

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    const/16 v5, 0x32

    :goto_2
    if-eq v5, v6, :cond_4

    iget-object v3, v3, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, v3, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    goto :goto_3

    :cond_4
    iget-object p1, v3, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1zSDK;->afInfoLog()Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/appsflyer/internal/AFd1bSDK;->AFInAppEventParameterName:J

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1zSDK;->afDebugLog()Lcom/appsflyer/CreateOneLinkHttpTask;

    move-result-object p3

    invoke-virtual {p3, v4}, Lcom/appsflyer/CreateOneLinkHttpTask;->AFInAppEventType(Lcom/appsflyer/internal/AFd1qSDK;)V

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1zSDK;->init()Lcom/appsflyer/internal/AFe1iSDK;

    move-result-object p3

    new-instance v3, Lcom/appsflyer/internal/AFe1fSDK;

    new-instance v4, Lcom/appsflyer/internal/AFb1xSDK$5;

    invoke-direct {v4, p0}, Lcom/appsflyer/internal/AFb1xSDK$5;-><init>(Lcom/appsflyer/internal/AFb1xSDK;)V

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Ljava/lang/Runnable;)V

    new-instance v4, Lcom/appsflyer/internal/AFb1xSDK$1;

    invoke-direct {v4, p0, v3}, Lcom/appsflyer/internal/AFb1xSDK$1;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-virtual {p3, v3}, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFe1hSDK;)V

    new-instance v3, Lcom/appsflyer/internal/AFe1aSDK;

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/AFe1aSDK;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3, v3}, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFe1hSDK;)V

    new-instance v3, Lcom/appsflyer/internal/AFe1gSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/appsflyer/internal/AFe1gSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1zSDK;)V

    invoke-virtual {p3, v3}, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFe1hSDK;)V

    new-instance v3, Lcom/appsflyer/internal/AFe1dSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/appsflyer/internal/AFe1dSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1zSDK;)V

    invoke-virtual {p3, v3}, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFe1hSDK;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_a

    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.appsflyer.referrer.INSTALL_PROVIDER"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    sget v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v6, v6, 0x55

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v6, v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x23

    if-eqz v8, :cond_7

    move v8, v7

    goto :goto_5

    :cond_7
    move v8, v9

    :goto_5
    if-eq v8, v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v8, :cond_8

    new-instance v9, Lcom/appsflyer/internal/AFe1jSDK;

    invoke-direct {v9, v8, v4, v5}, Lcom/appsflyer/internal/AFe1jSDK;-><init>(Landroid/content/pm/ProviderInfo;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1zSDK;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v8, v8, 0x6b

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v8, v2

    goto :goto_4

    :cond_8
    const-string v8, "[Preinstall]: com.appsflyer.referrer.INSTALL_PROVIDER Action is set for non ContentProvider component"

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p3, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Preinstall]: Detected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " valid preinstall provider(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :cond_a
    :goto_6
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFe1hSDK;

    move-result-object p3

    array-length v3, p3

    move v4, v1

    :goto_7
    if-ge v4, v3, :cond_b

    aget-object v5, p3, v4

    iget-object v6, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    invoke-virtual {v5, v6}, Lcom/appsflyer/internal/AFe1hSDK;->valueOf(Landroid/content/Context;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    iget-object p3, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFd1gSDK;->valueOf()Z

    iget-object p3, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    sput-object p3, Lcom/appsflyer/internal/AFb1dSDK;->AFInAppEventType:Landroid/app/Application;

    goto :goto_8

    :cond_c
    const-string p3, "context is null, Google Install Referrer will be not initialized"

    invoke-static {p3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :goto_8
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object p3

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v1

    if-nez p2, :cond_d

    const-string p1, "null"

    goto :goto_9

    :cond_d
    const-string p1, "conversionDataListener"

    :goto_9
    aput-object p1, v3, v0

    const-string p1, "init"

    invoke-virtual {p3, p1, v3}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string p3, "6.9.2"

    aput-object p3, p1, v1

    sget-object p3, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper:Ljava/lang/String;

    aput-object p3, p1, v0

    const-string p3, "Initializing AppsFlyer SDK: (v%s.%s)"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    sput-object p2, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    return-object p0
.end method

.method public final isPreInstalledApp(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x41

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v2

    const/16 v0, 0x9

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/16 p1, 0xa

    :goto_1
    if-eq p1, v0, :cond_3

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p1, v3

    if-eqz p1, :cond_4

    :cond_3
    return v2

    :cond_4
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_4

    :goto_3
    const-string v0, "Could not check if app is pre installed"

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return v3
.end method

.method public final isStopped()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1gSDK;->values()Z

    move-result v0

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x4b

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/attribution/AppsFlyerRequestListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iget-object p3, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eqz p1, :cond_1

    iget-object p3, p3, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p3, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_1
    new-instance p3, Lcom/appsflyer/internal/AFe1sSDK;

    invoke-direct {p3}, Lcom/appsflyer/internal/AFe1sSDK;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, p3, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    :cond_2
    iput-object p2, p3, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:Ljava/lang/String;

    iput-object p4, p3, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v1, :cond_4

    const-string p4, "af_touch_obj"

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/view/MotionEvent;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/MotionEvent;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "y"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "loc"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "pf"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "rad"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v3, "error"

    const-string v4, "Parsing failed due to invalid input in \'af_touch_obj\'."

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v3, "tch_data"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    :cond_4
    iput-object v1, p3, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p4

    invoke-interface {p4}, Lcom/appsflyer/internal/AFc1zSDK;->afWarnLog()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object p4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p3, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_5
    iget-object v4, p3, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    :goto_2
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "logEvent"

    invoke-virtual {p4, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p2, :cond_6

    sget-object p2, Lcom/appsflyer/internal/AFd1dSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1dSDK;)V

    :cond_6
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :cond_7
    invoke-virtual {p0, p3, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Landroid/app/Activity;)V

    return-void
.end method

.method public final logLocation(Landroid/content/Context;DD)V
    .locals 5

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "logLocation"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p4

    const-string p5, "af_long"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    const-string p3, "af_lat"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "af_location_coordinates"

    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFb1xSDK;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    const/16 p2, 0x35

    add-int/2addr p1, p2

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    const/16 p3, 0x28

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    if-ne p2, p3, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final logSession(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "logSession"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1qSDK;->afInfoLog()V

    sget-object v0, Lcom/appsflyer/internal/AFd1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1dSDK;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/appsflyer/internal/AFb1xSDK;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v1, 0x41

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final onPause(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;

    const/16 v1, 0x11

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    :goto_0
    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    if-nez v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;->AFKeystoreWrapper(Landroid/content/Context;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;->AFKeystoreWrapper(Landroid/content/Context;)V

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x52

    if-eqz p2, :cond_0

    const/16 v1, 0x3b

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "\""

    if-eq v1, v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Context is \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/appsflyer/internal/AFa1sSDK;->values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    move p1, p2

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    if-eq p1, v0, :cond_4

    const/16 p1, 0x17

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    return-void

    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Link is \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void
.end method

.method public final performOnDeepLinking(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string p2, "performOnDeepLinking was called with null intent"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_1
    const/16 v0, 0x12

    if-nez p2, :cond_2

    const/16 v2, 0x3f

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-eq v2, v0, :cond_3

    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string p2, "performOnDeepLinking was called with null context"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1hSDK;->AFInAppEventParameterName(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    const/4 v2, 0x1

    if-eqz p2, :cond_8

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x17

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v3, v3, 0x2

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v3, 0x22

    if-eqz p2, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    const/16 v4, 0x52

    :goto_2
    if-eq v4, v3, :cond_5

    goto :goto_4

    :cond_5
    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v3, v3, 0x7

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    const/16 v0, 0x15

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    throw p1

    :cond_7
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lcom/appsflyer/internal/AFb1xSDK$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, p1}, Lcom/appsflyer/internal/AFb1xSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_9

    move p1, v1

    goto :goto_5

    :cond_9
    move p1, v2

    :goto_5
    if-eq p1, v2, :cond_a

    const/16 p1, 0x56

    :try_start_2
    div-int/2addr p1, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    throw p1

    :cond_a
    return-void
.end method

.method public final registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 2

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "registerConversionListener"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Lcom/appsflyer/AppsFlyerConversionListener;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "registerValidatorListener"

    invoke-virtual {p1, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "registerValidatorListener called"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/16 p1, 0x16

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    if-eq v1, p1, :cond_1

    sput-object p2, Lcom/appsflyer/internal/AFb1xSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const-string p1, "registerValidatorListener null listener"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final sendAdRevenue(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v3, v2

    iget-object v1, v1, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v3, 0x1c

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/16 v4, 0x1e

    :goto_0
    if-eq v4, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_2
    :goto_1
    new-instance v1, Lcom/appsflyer/internal/AFe1xSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFe1xSDK;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-eqz v5, :cond_4

    sget v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v5, v5, 0x3b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v5, v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, v1, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    :cond_4
    sget-object p1, Lcom/appsflyer/internal/AFb1xSDK;->afErrorLog:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v0, Lcom/appsflyer/internal/AFb1aSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v5, "appsFlyerAdRevenueCount"

    invoke-interface {v3, v5}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Lcom/appsflyer/internal/AFa1tSDK;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "ad_network"

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "adrevenue_counter"

    invoke-interface {v5, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/appsflyer/internal/AFb1xSDK$AFa1wSDK;

    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1aSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    invoke-direct {p2, p0, p1, v4}, Lcom/appsflyer/internal/AFb1xSDK$AFa1wSDK;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFa1tSDK;B)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr p1, v2

    return-void
.end method

.method public final sendInAppPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eq v3, v2, :cond_3

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x5d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v3, v3, 0x2

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->AFLogger()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    const-string v0, "purchases"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/appsflyer/PurchaseHandler;->AFInAppEventType(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/appsflyer/internal/AFc1cSDK;

    iget-object v1, p1, Lcom/appsflyer/PurchaseHandler;->AFInAppEventType:Lcom/appsflyer/internal/AFc1zSDK;

    invoke-direct {v0, p2, p3, v1}, Lcom/appsflyer/internal/AFc1cSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFc1zSDK;)V

    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object p2, p1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {p3, p1, v0}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final sendPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x3f

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x3c

    :goto_0
    if-eq v2, v3, :cond_3

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v2, 0x5f

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x34

    :goto_1
    if-eq v3, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1zSDK;->AFLogger()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    const-string/jumbo v0, "subscriptions"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/appsflyer/PurchaseHandler;->AFInAppEventType(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/appsflyer/internal/AFc1eSDK;

    iget-object v2, p1, Lcom/appsflyer/PurchaseHandler;->AFInAppEventType:Lcom/appsflyer/internal/AFc1zSDK;

    invoke-direct {v0, p2, p3, v2}, Lcom/appsflyer/internal/AFc1eSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFc1zSDK;)V

    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object p2, p1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {p3, p1, v0}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    :cond_5
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-nez p1, :cond_6

    move p1, p2

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-eq p1, p2, :cond_7

    return-void

    :cond_7
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final sendPushNotificationData(Landroid/app/Activity;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "c"

    const-string v2, "pid"

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x65

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    const-string v3, "sendPushNotificationData"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "activity_intent_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v7, v3, v8}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v7, 0x12

    if-eqz p1, :cond_1

    const/16 v8, 0x5c

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    if-eq v8, v7, :cond_3

    sget v7, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v7, v7, 0x19

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v7, v4

    const-string v8, "activity_intent_null"

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v7

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v8, v9, v5

    invoke-virtual {v7, v3, v9}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v8, v9, v5

    invoke-virtual {v7, v3, v9}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v7

    const-string v8, "activity_null"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v3, v3, 0x7

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v3, v4

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    if-eqz v3, :cond_e

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v3, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative:Ljava/util/Map;

    const-string v10, ")"

    if-nez v3, :cond_4

    const-string v0, "pushes: initializing pushes history.."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative:Ljava/util/Map;

    move-wide v13, v8

    goto/16 :goto_9

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v11, "pushPayloadMaxAging"

    const-wide/32 v12, 0x1b7740

    invoke-virtual {v3, v11, v12, v13}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v3, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v13, v8

    :goto_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, v1, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative:Ljava/util/Map;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    return-void

    :cond_5
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long v4, v8, v4

    cmp-long v4, v4, v11

    if-lez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v4, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative:Ljava/util/Map;

    invoke-interface {v4, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v4, v4, v13

    if-gtz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_a

    sget v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v4, v4, 0x37

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-eqz v4, :cond_9

    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v6, 0x42

    const/4 v7, 0x0

    :try_start_3
    div-int/2addr v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-wide v13, v4

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    move-wide v13, v4

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    move v6, v7

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-wide v13, v8

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while handling push notification measurement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_9
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "pushPayloadHistorySize"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pushes: removing oldest overflowing push (oldest push:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative:Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    goto :goto_a

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    :try_start_5
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    throw v0

    :cond_e
    :goto_a
    return-void
.end method

.method public final setAdditionalData(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x58

    if-nez v0, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "setAdditionalData"

    invoke-virtual {v2, v4, v3}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/appsflyer/AppsFlyerProperties;->setCustomData(Ljava/lang/String;)V

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    const/16 p1, 0x57

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    return-void

    :cond_4
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final setAndroidIdData(Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setAndroidIdData"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x9

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    const-string v2, "appid"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "setAppId"

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-virtual {v0, v5, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v5, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAppInviteOneLink(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "setAppInviteOneLink"

    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAppInviteOneLink = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const-string v0, "oneLinkSlug"

    if-eqz p1, :cond_2

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x2c

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    :goto_0
    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkDomain"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkVersion"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkScheme"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    sget v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    :cond_3
    :goto_2
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final setCollectAndroidID(Z)V
    .locals 7

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "collectAndroidIdForceByUser"

    const-string v4, "collectAndroidId"

    const-string v5, "setCollectAndroidID"

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final setCollectIMEI(Z)V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setCollectIMEI"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "collectIMEI"

    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "collectIMEIForceByUser"

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setCollectOaid(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setCollectOaid"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "collectOAID"

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setCurrencyCode"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V
    .locals 10

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x3d

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_a

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    if-eqz p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomerUserId set: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Initializing AppsFlyer Tacking"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/internal/AFd1dSDK;->values:Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p0, p2, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1dSDK;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-eqz v0, :cond_4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    :goto_3
    move-object v8, p1

    goto :goto_5

    :cond_4
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    move p1, v3

    goto :goto_4

    :cond_5
    move p1, v2

    :goto_4
    if-eq p1, v3, :cond_8

    const-string p1, ""

    goto :goto_3

    :goto_5
    instance-of p1, p2, Landroid/app/Activity;

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    if-eq v2, v3, :cond_7

    move-object p1, p2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    :cond_7
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFb1xSDK;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_8
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "waitForCustomerUserId is false; setting CustomerUserID: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    :cond_a
    :goto_7
    return-void
.end method

.method public final setCustomerUserId(Ljava/lang/String;)V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "setCustomerUserId"

    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCustomerUserId = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const-string v0, "AppUserId"

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "waitForCustomerId"

    invoke-static {p1, v2}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setDebugLog(Z)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x22

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 p1, 0x2b

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    if-ne v0, p1, :cond_2

    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    return-void

    :cond_4
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final setDisableAdvertisingIdentifiers(Z)V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "setDisableAdvertisingIdentifiers: "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/16 v0, 0x37

    if-nez p1, :cond_1

    const/16 p1, 0x5d

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserIdEnabled"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserId"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final setDisableNetworkData(Z)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisableNetworkData: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "disableCollectNetworkData"

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setExtension(Ljava/lang/String;)V
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3b

    if-nez v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "sdkExtension"

    const-string v3, "setExtension"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x13

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    :goto_0
    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "custom_host_prefix"

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x46

    if-eqz p2, :cond_2

    move v0, p1

    goto :goto_2

    :cond_2
    const/16 v0, 0x52

    :goto_2
    if-eq v0, p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const-string p1, "custom_host"

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_4
    const-string p1, "hostName cannot be null or empty"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setImeiData(Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setImeiData"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    iput-object p1, v0, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x25

    if-eqz p1, :cond_0

    const/16 p1, 0x39

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setIsUpdate(Z)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setIsUpdate"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "IS_UPDATE"

    invoke-virtual {v0, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v0

    sget-object v3, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v3}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v3

    const/16 v4, 0x8

    :try_start_0
    div-int/2addr v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v0

    sget-object v3, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v3}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v3

    const/16 v4, 0x27

    if-le v0, v3, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    const/16 v0, 0x1e

    :goto_1
    if-eq v0, v4, :cond_3

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFc1xSDK;->afWarnLog()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "log"

    invoke-virtual {v3, v0, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p1

    const-string v1, "logLevel"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setMinTimeBetweenSessions(I)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionFailureNative:J

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setOaidData(Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "setOaidData"

    invoke-virtual {v0, v4, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object p1, Lcom/appsflyer/internal/AFb1zSDK;->valueOf:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p1, v1, :cond_1

    const/16 p1, 0x1f

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method public final varargs setOneLinkCustomDomain([Ljava/lang/String;)V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setOneLinkCustomDomain %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sput-object p1, Lcom/appsflyer/internal/AFa1sSDK;->valueOf:[Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    move v3, v0

    :cond_0
    if-eq v3, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setOutOfStore(Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, v2, :cond_2

    const/16 v0, 0x49

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x3b

    if-eqz p1, :cond_1

    const/16 v1, 0x10

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eq v1, v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Store API set with value: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :cond_4
    const-string p1, "Cannot set setOutOfStore with null"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void
.end method

.method public final setPartnerData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttribution:Lcom/appsflyer/internal/AFb1eSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFb1eSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1eSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttribution:Lcom/appsflyer/internal/AFb1eSDK;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttribution:Lcom/appsflyer/internal/AFb1eSDK;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_c

    sget v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v4, v4, 0x25

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v4, v4, 0x2

    const/16 v5, 0x37

    if-eqz v4, :cond_2

    const/16 v4, 0x35

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-ne v4, v5, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_5

    :cond_3
    const/16 v4, 0x8

    if-eqz p2, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    const/16 v5, 0x2a

    :goto_2
    if-eq v5, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    iget-object p2, v0, Lcom/appsflyer/internal/AFb1eSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_8

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    move v2, v3

    :cond_6
    if-eq v2, v3, :cond_7

    const-string p1, "Partner data is missing or `null`"

    goto :goto_4

    :cond_7
    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cleared partner data for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting partner data for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_a

    const-string p2, "Partner data 1000 characters limit exceeded"

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit exceeded: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1eSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    iget-object v1, v0, Lcom/appsflyer/internal/AFb1eSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lcom/appsflyer/internal/AFb1eSDK;->valueOf:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :cond_c
    :goto_5
    const-string p1, "Partner ID is missing or `null`"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    :cond_d
    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    throw p1
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1tSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK;->onAttributionFailure:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "setPreinstallAttribution API called"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "pid"

    if-eqz p1, :cond_2

    sget v2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x3a

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x5b

    :goto_0
    if-eq v2, v3, :cond_1

    :try_start_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :try_start_1
    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    move v3, p1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-eq v3, v2, :cond_4

    :try_start_2
    const-string v3, "c"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    sget p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p2, p2, 0x1f

    rem-int/lit16 v3, p2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p2, p2, 0x2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    move p1, v2

    :cond_5
    if-eqz p1, :cond_6

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    :try_start_3
    const-string p1, "af_siteid"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "preInstallName"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p1, "Cannot set preinstall attribution data without a media source"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setResolveDeepLinkURLs([Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4e

    if-nez v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "setResolveDeepLinkURLs %s"

    if-eq v0, v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventType:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final varargs setSharingFilter([Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x14

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setSharingFilterForAllPartners()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "all"

    if-eq v0, v1, :cond_1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final varargs setSharingFilterForPartners([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/appsflyer/internal/AFa1fSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFa1fSDK;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AFLogger:Lcom/appsflyer/internal/AFa1fSDK;

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string/jumbo v2, "setUserEmails"

    invoke-virtual {v1, v2, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->getValue()I

    move-result v1

    const-string/jumbo v2, "userEmailsCryptType"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p2

    const/4 v4, 0x0

    sget v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v5, v5, 0x35

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    :goto_0
    const/16 v5, 0x3c

    if-ge v4, v3, :cond_0

    const/16 v7, 0x47

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    if-eq v7, v5, :cond_2

    aget-object v1, p2, v4

    sget-object v5, Lcom/appsflyer/internal/AFb1xSDK$7;->AFKeystoreWrapper:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v6, :cond_1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1tSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sha256_el_arr"

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v1, "plain_el_arr"

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/AppsFlyerProperties;->setUserEmails(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr p1, v6

    return-void
.end method

.method public final varargs setUserEmails([Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    const-string/jumbo v1, "setUserEmails"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    const/16 v0, 0x5d

    add-int/2addr p1, v0

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v1, 0x4b

    if-nez p1, :cond_0

    const/16 p1, 0x2e

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p1, v1, :cond_1

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 7

    sget-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseNative:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "ERROR: AppsFlyer SDK is not initialized! The API call \'start()\' must be called after the \'init(String, AppsFlyerConversionListener)\' API method, which should be called on the Application\'s onCreate."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    if-nez p2, :cond_3

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_1

    const/16 p1, 0x41

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    if-eqz p3, :cond_2

    :goto_0
    sget p1, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object p2, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eqz p1, :cond_4

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x3b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v3, v1

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_4
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1zSDK;->afInfoLog()Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v0

    invoke-static {p1}, Lcom/appsflyer/internal/AFa1pSDK;->values(Landroid/content/Context;)Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/AFd1bSDK;->values(Lcom/appsflyer/internal/AFe1zSDK;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    iput-object v3, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p2, v5, v2

    const-string/jumbo v6, "start"

    invoke-virtual {v3, v6, v5}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "6.9.2"

    aput-object v5, v3, v2

    sget-object v5, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v6, "Starting AppsFlyer: (v%s.%s)"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Build Number: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    iget-object v5, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/appsflyer/AppsFlyerProperties;->loadProperties(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eq v3, v4, :cond_9

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object p2

    iget-object p2, p2, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v4

    goto :goto_2

    :cond_6
    move p2, v2

    :goto_2
    if-eqz p2, :cond_a

    const-string p1, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the \'init\' API method (should be called on Application\'s onCreate),or in the start() API (should be called on Activity\'s onCreate)."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    move v2, v4

    :goto_3
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    sget p1, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object p2, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :goto_4
    return-void

    :cond_9
    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x15

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/2addr v3, v1

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v1

    iput-object p2, v1, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventType(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1zSDK;->afDebugLog()Lcom/appsflyer/CreateOneLinkHttpTask;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/appsflyer/CreateOneLinkHttpTask;->AFInAppEventType(Lcom/appsflyer/internal/AFd1qSDK;)V

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1xSDK;->afDebugLog()V

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog(Landroid/content/Context;)V

    iget-boolean p2, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseError:Z

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_b
    move v2, v4

    :goto_5
    if-eq v2, v4, :cond_c

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK;->onResponseErrorNative:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFb1xSDK;->afInfoLog(Landroid/content/Context;)V

    :cond_c
    new-instance p2, Lcom/appsflyer/internal/AFb1xSDK$4;

    invoke-direct {p2, p0, v0, p3}, Lcom/appsflyer/internal/AFb1xSDK$4;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    iget-object p3, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final stop(ZLandroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    sget v3, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x27

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v3, 0x14

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x26

    if-eqz p2, :cond_1

    const/16 v4, 0x40

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eq v4, v3, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    iput-boolean p1, v0, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventParameterName:Z

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1xSDK;->getLevel()Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object v0

    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1pSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v4, "AFRequestCache"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    :try_start_3
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    array-length v3, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    sget v4, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v4, v4, 0x3

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v4, v4, 0x2

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_7

    :try_start_5
    aget-object v5, v0, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CACHE: Found cached request"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CACHE: Deleting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v3, "CACHE: Could not cache request"

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v1

    :goto_5
    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    const-string p2, "is_stop_tracking_used"

    invoke-interface {p1, p2, v1}, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    :goto_6
    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFa1sSDK;

    move-result-object v0

    iput-object p1, v0, Lcom/appsflyer/internal/AFa1sSDK;->AFInAppEventParameterName:Lcom/appsflyer/deeplink/DeepLinkListener;

    sput-wide p2, Lcom/appsflyer/internal/AFb1pSDK;->init:J

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x1a

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/16 p1, 0x5d

    :goto_0
    if-eq p1, p2, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final unregisterConversionListener()V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    const-string/jumbo v2, "unregisterConversionListener"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    sput-object v3, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    return-void

    :cond_3
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    :cond_0
    new-instance v0, Lcom/appsflyer/internal/AFd1iSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFd1iSDK;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[register] Firebase Refreshed Token = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1iSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1rSDK;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/appsflyer/internal/AFb1rSDK;->values:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_4

    iget-wide v3, p1, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventParameterName:J

    sub-long v3, v1, v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-instance v3, Lcom/appsflyer/internal/AFb1rSDK;

    xor-int/lit8 v4, p1, 0x1

    invoke-direct {v3, p2, v1, v2, v4}, Lcom/appsflyer/internal/AFb1rSDK;-><init>(Ljava/lang/String;JZ)V

    iget-object v1, v0, Lcom/appsflyer/internal/AFd1iSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    iget-object v2, v3, Lcom/appsflyer/internal/AFb1rSDK;->values:Ljava/lang/String;

    const-string v4, "afUninstallToken"

    invoke-interface {v1, v4, v2}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/appsflyer/internal/AFd1iSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    iget-wide v4, v3, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventParameterName:J

    const-string v2, "afUninstallToken_received_time"

    invoke-interface {v1, v2, v4, v5}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1iSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf()Z

    move-result v1

    const-string v2, "afUninstallToken_queued"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    invoke-static {p2}, Lcom/appsflyer/internal/AFd1iSDK;->valueOf(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    const-string p1, "[register] Firebase Token is either empty or null and was not registered."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    move-object v0, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    const/4 v3, 0x4

    aput-object v7, v2, v3

    if-nez p7, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "validateAndTrackInAppPurchase"

    invoke-virtual {v1, v3, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Validate in app called with parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_4

    if-eqz v6, :cond_4

    if-eqz p3, :cond_4

    if-eqz v7, :cond_4

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/appsflyer/internal/AFa1eSDK;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v11, p0

    iget-object v2, v11, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    :cond_3
    move-object v0, v10

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/internal/AFa1eSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_4
    :goto_1
    move-object v11, p0

    sget-object v0, Lcom/appsflyer/internal/AFb1xSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_5

    const-string v1, "Please provide purchase parameters"

    invoke-interface {v0, v1}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final values()Lcom/appsflyer/internal/AFc1zSDK;
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x18

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    return-object v0

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

.method final values(Lcom/appsflyer/internal/AFa1tSDK;)Ljava/util/Map;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1tSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "af_deeplink"

    const-string v4, "advertiserId"

    const-string/jumbo v5, "versionCode"

    const-string v6, "Exception while collecting facebook\'s attribution ID. "

    const-string v7, "appid"

    const-string v8, "sdkExtension"

    const-string v9, "extraReferrers"

    const-string v10, "AFRequestCache"

    const-string/jumbo v11, "yyyy-MM-dd_HHmmssZ"

    iget-object v12, v2, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/app/Application;

    iget-object v13, v1, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v13}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v13

    iget-object v13, v13, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    iget-object v14, v2, Lcom/appsflyer/internal/AFa1tSDK;->AFLogger:Ljava/lang/String;

    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v16, v4

    iget-object v4, v2, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    :goto_0
    invoke-direct {v15, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v15, v2, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    move-object/from16 v17, v3

    invoke-static {v12}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v18, v5

    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFa1tSDK;->valueOf()Z

    move-result v5

    move-object/from16 v19, v11

    iget-object v11, v2, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Ljava/lang/String;

    iget-object v2, v2, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    invoke-static {v12, v2}, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1uSDK;

    sget-object v20, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v20, v11

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    move-object/from16 v21, v6

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v22, v7

    const-string v7, "ad_ids_disabled"

    invoke-interface {v11, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v20, v11

    :goto_1
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    shr-int/lit8 v11, v11, 0x16

    move-object/from16 v23, v4

    const-string v4, ""

    move-object/from16 v24, v13

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v13

    add-int/lit16 v13, v13, 0x466d

    int-to-char v13, v13

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v25

    shr-int/lit8 v25, v25, 0x10

    move-object/from16 v26, v8

    rsub-int/lit8 v8, v25, 0xc

    invoke-static {v11, v13, v8}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(ICI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v6, v7}, Lcom/appsflyer/internal/AFa1ySDK;->valueOf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "cksm_v1"

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "******* sendTrackingWithEvent: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_3

    const-string v8, "Launch"

    goto :goto_2

    :cond_3
    move-object v8, v14

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v7, "Reporting has been stopped"

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v7

    invoke-interface {v7}, Lcom/appsflyer/internal/AFc1zSDK;->getLevel()Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    new-instance v8, Ljava/io/File;

    iget-object v11, v7, Lcom/appsflyer/internal/AFa1pSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v11, v11, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {v8, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/io/File;

    iget-object v7, v7, Lcom/appsflyer/internal/AFa1pSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v7, v7, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v8, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v0

    :try_start_2
    const-string v8, "CACHE: Could not create cache directory"

    invoke-static {v8, v7}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :cond_5
    :goto_4
    :try_start_3
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x1000

    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v8, "android.permission.INTERNET"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_6
    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_7
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x20

    if-le v8, v10, :cond_8

    const-string v8, "com.google.android.gms.permission.AD_ID"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml"

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v7, v0

    :try_start_4
    const-string v8, "Exception while validation permissions. "

    invoke-static {v8, v7}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    const-string v7, "af_events_api"

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0xb

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v25, v14

    const-wide/16 v13, 0x0

    cmp-long v10, v10, v13

    rsub-int/lit8 v10, v10, 0x1

    int-to-char v10, v10

    const/4 v11, 0x0

    invoke-static {v4, v4, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v27

    rsub-int/lit8 v13, v27, 0x1

    invoke-static {v8, v10, v13}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(ICI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0xd

    invoke-static {v4, v11}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v8

    add-int/lit16 v8, v8, 0x1ac9

    int-to-char v8, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    shr-int/lit8 v10, v10, 0x16

    add-int/lit8 v10, v10, 0x5

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(ICI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "device"

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "product"

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "sdk"

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "deviceType"

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    new-instance v8, Lcom/appsflyer/internal/AFb1fSDK;

    invoke-direct {v8, v12}, Lcom/appsflyer/internal/AFb1fSDK;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v10

    invoke-interface {v10}, Lcom/appsflyer/internal/AFc1zSDK;->afInfoLog()Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v10

    const/4 v13, 0x0

    if-eqz v5, :cond_15

    invoke-static {v12}, Lcom/appsflyer/internal/AFb1xSDK;->afDebugLog(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerProperties;->isOtherSdkStringDisabled()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {v12}, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionFailureNative(Landroid/content/Context;)F

    move-result v14

    const-string v11, "batteryLevel"

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {v12}, Lcom/appsflyer/internal/AFb1xSDK;->afErrorLog(Landroid/content/Context;)V

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v11, v14, :cond_a

    const-class v11, Landroid/app/UiModeManager;

    invoke-virtual {v12, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/UiModeManager;

    goto :goto_6

    :cond_a
    const-string/jumbo v11, "uimode"

    invoke-virtual {v12, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/UiModeManager;

    :goto_6
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v11

    const/4 v14, 0x4

    if-ne v11, v14, :cond_b

    const-string/jumbo v11, "tv"

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {v12}, Lcom/appsflyer/internal/AFd1cSDK;->valueOf(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "inst_app"

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string/jumbo v11, "timepassedsincelastlaunch"

    invoke-direct {v1, v12}, Lcom/appsflyer/internal/AFb1xSDK;->init(Landroid/content/Context;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Ljava/util/Map;)V

    invoke-static {v2, v10}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/util/Map;Lcom/appsflyer/internal/AFd1bSDK;)V

    iget-object v11, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAttributionFailure:Ljava/lang/String;

    if-eqz v11, :cond_d

    const-string v14, "phone"

    invoke-interface {v2, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const-string v14, "referrer"

    if-nez v11, :cond_e

    :try_start_5
    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-interface {v3, v9, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {v7, v12}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_10

    invoke-interface {v2, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-wide v9, v10, Lcom/appsflyer/internal/AFd1bSDK;->AFLogger$LogLevel:J

    const-wide/16 v14, 0x0

    cmp-long v11, v9, v14

    if-eqz v11, :cond_11

    const-string v11, "prev_session_dur"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v9, Lcom/appsflyer/internal/AFb1dSDK;->AFInAppEventType:Landroid/app/Application;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    const-string v10, "exception_number"

    if-nez v9, :cond_12

    const-wide/16 v14, -0x1

    goto :goto_7

    :cond_12
    :try_start_6
    sget-object v9, Lcom/appsflyer/internal/AFb1dSDK;->AFInAppEventType:Landroid/app/Application;

    invoke-static {v9}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-wide/16 v14, 0x0

    invoke-interface {v9, v10, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    :goto_7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v1, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttribution:Lcom/appsflyer/internal/AFb1eSDK;

    if-eqz v9, :cond_14

    iget-object v10, v9, Lcom/appsflyer/internal/AFb1eSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    const-string v11, "partner_data"

    if-nez v10, :cond_13

    :try_start_7
    iget-object v10, v9, Lcom/appsflyer/internal/AFb1eSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v10, v9, Lcom/appsflyer/internal/AFb1eSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    iget-object v14, v9, Lcom/appsflyer/internal/AFb1eSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v10, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v9, Lcom/appsflyer/internal/AFb1eSDK;->valueOf:Ljava/util/Map;

    :cond_14
    move-object/from16 v9, v25

    goto :goto_8

    :cond_15
    move-object/from16 v9, v25

    invoke-static {v12, v2, v9}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    :goto_8
    const-string v10, "KSAppsFlyerId"

    invoke-static {v10}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "KSAppsFlyerRICounter"

    invoke-static {v11}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_16

    if-eqz v11, :cond_16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    if-lez v14, :cond_16

    const-string v14, "reinstallCounter"

    invoke-interface {v2, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "originalAppsflyerId"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v10, "additionalCustomData"

    invoke-static {v10}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    const-string v11, "customData"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :cond_17
    :try_start_8
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_18

    const-string v11, "installer_package"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v10, v0

    :try_start_9
    const-string v11, "Exception while getting the app\'s installer package. "

    invoke-static {v11, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_9
    move-object/from16 v10, v26

    invoke-virtual {v7, v10}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_19

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_19

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v1, v12}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v12}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1qSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    :cond_1a
    if-nez v11, :cond_1c

    if-eqz v10, :cond_1c

    :cond_1b
    const-string v11, "af_latestchannel"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-direct {v1, v12}, Lcom/appsflyer/internal/AFb1xSDK;->afWarnLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    const-string v11, "af_installstore"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-direct {v1, v12}, Lcom/appsflyer/internal/AFb1xSDK;->AFVersionDeclaration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1e

    const-string v11, "af_preinstall_name"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    invoke-direct {v1, v12}, Lcom/appsflyer/internal/AFb1xSDK;->getLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1f

    const-string v11, "af_currentstore"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :cond_1f
    const-string v10, "appsflyerKey"

    if-eqz v24, :cond_20

    :try_start_a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_20

    move-object/from16 v11, v24

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_20
    iget-object v11, v1, Lcom/appsflyer/internal/AFb1xSDK;->AppsFlyerLib:Lcom/appsflyer/internal/AFc1xSDK;

    invoke-virtual {v11}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v11

    iget-object v11, v11, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    if-eqz v11, :cond_3a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3a

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_21

    const-string v11, "appUserId"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    const-string/jumbo v10, "userEmails"

    invoke-virtual {v7, v10}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_22

    const-string/jumbo v11, "user_emails"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_22
    const-string/jumbo v10, "userEmail"

    invoke-static {v10}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_23

    const-string/jumbo v11, "sha1_el"

    invoke-static {v10}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_b
    if-eqz v9, :cond_24

    const-string v10, "eventName"

    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "eventValue"

    move-object/from16 v11, v23

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_25

    invoke-static/range {v22 .. v22}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v22

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const-string v10, "currencyCode"

    invoke-static {v10}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_27

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v14, 0x3

    if-eq v11, v14, :cond_26

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "WARNING: currency code should be 3 characters!!! \'"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\' is not a legal value."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_26
    const-string v11, "currency"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string v10, "IS_UPDATE"

    invoke-static {v10}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_28

    const-string v11, "isUpdate"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-virtual {v1, v12}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v10

    const-string v11, "af_preinstalled"

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "collectFacebookAttrId"

    invoke-virtual {v7, v10, v6}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v10, :cond_29

    :try_start_b
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.facebook.katana"

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v12}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object/from16 v11, v21

    :try_start_c
    invoke-static {v11, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    move-object v10, v13

    goto :goto_d

    :catch_3
    move-object/from16 v11, v21

    invoke-static {v11}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_c

    :goto_d
    if-eqz v10, :cond_29

    const-string v11, "fb"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-direct {v1, v12, v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v10}, Lcom/appsflyer/internal/AFb1uSDK;->values(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2a

    const-string/jumbo v11, "uid"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v10, v0

    :try_start_e
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "ERROR: could not get uid "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :cond_2a
    :goto_e
    :try_start_f
    const-string v10, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v10, v0

    :try_start_10
    const-string v11, "Exception while collecting display language name. "

    invoke-static {v11, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :goto_f
    :try_start_11
    const-string v10, "lang_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_10

    :catch_6
    move-exception v0

    move-object v10, v0

    :try_start_12
    const-string v11, "Exception while collecting display language code. "

    invoke-static {v11, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :goto_10
    :try_start_13
    const-string v10, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_11

    :catch_7
    move-exception v0

    move-object v10, v0

    :try_start_14
    const-string v11, "Exception while collecting country name. "

    invoke-static {v11, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    const-string v10, "platformextension"

    iget-object v11, v1, Lcom/appsflyer/internal/AFb1xSDK;->onDeepLinkingNative:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v11}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v2}, Lcom/appsflyer/internal/AFb1xSDK;->values(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v10, Ljava/text/SimpleDateFormat;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v14, v19

    invoke-direct {v10, v14, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    invoke-virtual {v11, v15, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object v15, v7

    :try_start_16
    iget-wide v6, v11, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string v11, "installDate"

    invoke-static {v10, v6, v7}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_13

    :catch_8
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    move-object v15, v7

    :goto_12
    move-object v6, v0

    :try_start_17
    const-string v7, "Exception while collecting install date. "

    invoke-static {v7, v6}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :goto_13
    :try_start_18
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object/from16 v11, v18

    invoke-interface {v3, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget v13, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-le v13, v6, :cond_2b

    :try_start_19
    invoke-virtual {v1, v12}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object v6

    iget v13, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v6, v11, v13}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType(Ljava/lang/String;I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v23, v8

    move-object/from16 v25, v9

    move-object/from16 v22, v15

    goto/16 :goto_17

    :cond_2b
    :goto_14
    :try_start_1a
    const-string v6, "app_version_code"

    iget v11, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "app_version_name"

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    move-object v6, v8

    move-object/from16 v25, v9

    :try_start_1b
    iget-wide v8, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    move-object v11, v6

    :try_start_1c
    iget-wide v6, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-string v13, "date1"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-object/from16 v22, v15

    :try_start_1d
    new-instance v15, Ljava/text/SimpleDateFormat;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    move-object/from16 v23, v11

    :try_start_1e
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v15, v14, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "date2"

    new-instance v9, Ljava/text/SimpleDateFormat;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v14, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v10, v12}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    const/16 v9, 0x12

    add-int/2addr v8, v9

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v4, v4, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-static {v8, v9, v4}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    goto :goto_18

    :catchall_2
    move-exception v0

    goto :goto_16

    :catchall_3
    move-exception v0

    move-object/from16 v23, v11

    goto :goto_16

    :catchall_4
    move-exception v0

    move-object/from16 v23, v11

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v23, v6

    goto :goto_15

    :catchall_6
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v25, v9

    :goto_15
    move-object/from16 v22, v15

    :goto_16
    move-object v4, v0

    :goto_17
    :try_start_1f
    const-string v6, "Exception while collecting app version data "

    const/4 v7, 0x1

    invoke-static {v6, v4, v7}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_18
    invoke-static {v12}, Lcom/appsflyer/internal/AFd1iSDK;->AFInAppEventType(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/appsflyer/internal/AFb1xSDK;->onConversionDataFail:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "didConfigureTokenRefreshService="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/appsflyer/internal/AFb1xSDK;->onConversionDataFail:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/appsflyer/internal/AFb1xSDK;->onConversionDataFail:Z

    if-nez v4, :cond_2c

    const-string/jumbo v4, "tokenRefreshConfigured"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    if-eqz v5, :cond_2f

    iget-object v4, v1, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    if-eqz v4, :cond_2e

    move-object/from16 v4, v17

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2d

    const-string v4, "Skip \'af\' payload as deeplink was found by path"

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_19

    :cond_2d
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, v1, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "isPush"

    const-string/jumbo v8, "true"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_19
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/appsflyer/internal/AFb1xSDK;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    const-string v4, "open_referrer"

    move-object/from16 v6, v20

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    :cond_2f
    if-nez v5, :cond_31

    :try_start_20
    invoke-static {v12}, Lcom/appsflyer/internal/AFa1cSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1cSDK;

    move-result-object v4

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventParameterName()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    const-string v8, "sensors"

    if-nez v7, :cond_30

    :try_start_21
    new-instance v7, Lcom/appsflyer/internal/AFa1qSDK;

    invoke-direct {v7}, Lcom/appsflyer/internal/AFa1qSDK;-><init>()V

    invoke-virtual {v7, v4}, Lcom/appsflyer/internal/AFa1qSDK;->AFInAppEventType(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_30
    const-string v4, "na"

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    invoke-interface {v2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_1b

    :catch_a
    move-exception v0

    move-object v4, v0

    :try_start_22
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected exception from AFSensorManager: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    :cond_31
    :goto_1b
    invoke-static/range {v16 .. v16}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_33

    invoke-static {v12, v2}, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1uSDK;

    const-string v4, "GAID_retry"

    invoke-static/range {v16 .. v16}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_32

    const/4 v14, 0x1

    goto :goto_1c

    :cond_32
    const/4 v14, 0x0

    :goto_1c
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/AFb1zSDK;->valueOf(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v4

    if-eqz v4, :cond_34

    const-string v6, "amazon_aid"

    iget-object v7, v4, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "amazon_aid_limit"

    iget-object v4, v4, Lcom/appsflyer/internal/AFa1uSDK;->values:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    invoke-static {v3}, Lcom/appsflyer/internal/AFd1iSDK;->values(Landroid/content/SharedPreferences;)Z

    move-result v4

    const-string v6, "registeredUninstall"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/SharedPreferences;Z)I

    move-result v4

    const-string v6, "counter"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "iaecounter"

    if-eqz v25, :cond_35

    const/4 v14, 0x1

    goto :goto_1d

    :cond_35
    const/4 v14, 0x0

    :goto_1d
    invoke-static {v3, v14}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/SharedPreferences;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_36

    const/4 v6, 0x1

    if-ne v4, v6, :cond_36

    move-object/from16 v7, v22

    iput-boolean v6, v7, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Z

    :cond_36
    const-string v6, "isFirstCall"

    invoke-static {v3}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/SharedPreferences;)Z

    move-result v7

    if-nez v7, :cond_37

    const/4 v14, 0x1

    goto :goto_1e

    :cond_37
    const/4 v14, 0x0

    :goto_1e
    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v5, v2, v4}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;ZLjava/util/Map;I)V

    new-instance v4, Lcom/appsflyer/internal/AFb1tSDK;

    invoke-direct {v4}, Lcom/appsflyer/internal/AFb1tSDK;-><init>()V

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "af_v"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/appsflyer/internal/AFb1tSDK;

    invoke-direct {v4}, Lcom/appsflyer/internal/AFb1tSDK;-><init>()V

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1tSDK;->AFKeystoreWrapper(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "af_v2"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Lcom/appsflyer/internal/AFb1xSDK;->onAppOpenAttributionNative(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "ivc"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "is_stop_tracking_used"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "istu"

    const-string v5, "is_stop_tracking_used"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "mcc"

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "mnc"

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cell"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "sig"

    move-object/from16 v4, v23

    iget-object v5, v4, Lcom/appsflyer/internal/AFb1fSDK;->AFKeystoreWrapper:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v4, v4, Lcom/appsflyer/internal/AFb1fSDK;->AFKeystoreWrapper:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "last_boot_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "disk"

    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_39

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    mul-long/2addr v7, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    mul-long/2addr v9, v5

    goto :goto_1f

    :cond_39
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    mul-int/2addr v6, v5

    int-to-long v7, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    mul-int/2addr v4, v5

    int-to-long v9, v4

    :goto_1f
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    long-to-double v6, v7

    div-double/2addr v6, v4

    double-to-long v6, v6

    long-to-double v8, v9

    div-double/2addr v8, v4

    double-to-long v4, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/appsflyer/internal/AFb1xSDK;->AFLogger:Lcom/appsflyer/internal/AFa1fSDK;

    if-eqz v3, :cond_3b

    iget-object v3, v3, Lcom/appsflyer/internal/AFa1fSDK;->valueOf:[Ljava/lang/String;

    if-eqz v3, :cond_3b

    const-string/jumbo v4, "sharing_filter"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_3a
    const-string v3, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const-string v3, "AppsFlyer will not track this event."

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    const/4 v2, 0x0

    return-object v2

    :catchall_7
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_3b
    :goto_20
    return-object v2
.end method

.method public final waitForCustomerUserId(Z)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "waitForCustomerId"

    const-string v4, "initAfterCustomerUserID: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1xSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method
