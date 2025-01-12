.class public final Lcom/appsflyer/internal/AFb1qSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static afDebugLog:I = 0x0

.field private static afInfoLog:J = 0x1a9ab7765d20ab08L

.field private static getLevel:I = 0x1

.field private static valueOf:Lcom/appsflyer/internal/AFb1qSDK;


# instance fields
.field private AFInAppEventParameterName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final AFInAppEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private AFKeystoreWrapper:I

.field private AFLogger:Ljava/lang/String;

.field private afErrorLog:Z

.field private afRDLog:Z

.field private values:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->values:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "-1"

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger:Ljava/lang/String;

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "disableProxy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->afErrorLog:Z

    iput v3, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper:I

    iput-boolean v3, p0, Lcom/appsflyer/internal/AFb1qSDK;->afRDLog:Z

    return-void
.end method

.method public static AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/appsflyer/internal/AFb1qSDK;->valueOf:Lcom/appsflyer/internal/AFb1qSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFb1qSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1qSDK;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFb1qSDK;->valueOf:Lcom/appsflyer/internal/AFb1qSDK;

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFb1qSDK;->valueOf:Lcom/appsflyer/internal/AFb1qSDK;

    return-object v0
.end method

.method private varargs declared-synchronized AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1qSDK;->afRDLog()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x17

    :try_start_1
    div-int/lit8 v1, v1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1

    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1qSDK;->afRDLog()Z

    move-result v0

    const/16 v1, 0x4a

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3b

    :goto_0
    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    iget v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const v1, 0x18000

    if-lt v0, v1, :cond_4

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, ", "

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " _/AppsFlyer_6.9.2 ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget p2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0x2f

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p2, p2, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 p3, 0x2e

    if-nez p2, :cond_5

    move p2, p3

    goto :goto_3

    :cond_5
    const/16 p2, 0x38

    goto :goto_3

    :cond_6
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/AppsFlyer_6.9.2 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget p2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p2, p2, 0x25

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p2, p2, 0x2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    :try_start_7
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized AFInAppEventType(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFd1gSDK;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "remote_debug_static_data"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v2

    const-string v4, "advertiserId"

    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p3, p3, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType:Ljava/lang/String;

    iget-object v5, v2, Lcom/appsflyer/internal/AFb1xSDK;->afRDLog:Ljava/lang/String;

    invoke-direct {p0, v4, p3, v5}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "6.9.2."

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1zSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/appsflyer/internal/AFd1gSDK;->values:Ljava/lang/String;

    const-string v4, "KSAppsFlyerId"

    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uid"

    invoke-virtual {v0, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v2, v4, v5}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string p3, "channel"

    invoke-virtual {v0, p3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "preInstallName"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/appsflyer/internal/AFb1qSDK;->values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2

    :catchall_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :catchall_1
    :goto_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string p2, "launch_counter"

    iget-object p3, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 p2, 0x1

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    if-eq p1, p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/16 p1, 0x32

    :try_start_5
    div-int/2addr p1, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string/jumbo v1, "\u3f3e\u05fe\ua441\u3f5c\u3998\uae84\uf230\u38ee\u937a"

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/appsflyer/internal/AFb1qSDK;->valueOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "platform"

    const-string v3, "Android"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "platform_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    sget v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "advertiserId"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    move p1, v0

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    if-eqz p1, :cond_6

    :try_start_3
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    move v2, v0

    :cond_4
    if-eq v2, v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "imei"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :goto_4
    monitor-exit p0

    throw p1

    :cond_6
    :goto_5
    if-eqz p3, :cond_8

    :try_start_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x23

    if-lez p1, :cond_7

    goto :goto_6

    :cond_7
    move v0, p2

    :goto_6
    if-eq v0, p2, :cond_8

    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string p2, "android_id"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    monitor-exit p0

    return-void

    :catchall_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x2c

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "sdk_version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xe

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/16 p1, 0x26

    :goto_1
    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v0, "devkey"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_2
    if-eqz p3, :cond_5

    :try_start_2
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez p1, :cond_5

    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez p1, :cond_4

    :try_start_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string p2, "originalAppsFlyerId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string p2, "originalAppsFlyerId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :goto_3
    if-eqz p4, :cond_6

    :try_start_6
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lez p1, :cond_6

    :try_start_8
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string/jumbo p2, "uid"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    :try_start_a
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/16 p2, 0x38

    if-nez p1, :cond_7

    move p1, p2

    goto :goto_4

    :cond_7
    const/16 p1, 0x3a

    :goto_4
    if-eq p1, p2, :cond_8

    monitor-exit p0

    return-void

    :cond_8
    const/16 p1, 0x5d

    :try_start_b
    div-int/lit8 p1, p1, 0x0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_9
    :try_start_d
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string p3, "sdk_version"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static AFInAppEventType(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3e

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x56

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_6

    array-length v0, p1

    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v2

    move p0, v3

    :goto_1
    array-length v1, p1

    if-ge p0, v1, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    sget v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_3

    :cond_2
    move v1, v3

    :goto_3
    if-eqz v1, :cond_3

    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    add-int/lit8 p0, p0, 0x2e

    goto :goto_1

    :cond_4
    sget p0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    const/16 p0, 0x19

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    return-object v0

    :cond_6
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2

    new-array p1, v3, [Ljava/lang/String;

    aput-object p0, p1, v2

    return-object p1
.end method

.method private declared-synchronized AFLogger()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper:I

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized afDebugLog()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "data"

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    sget v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "data"

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private afRDLog()Z
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->afErrorLog:Z

    const/16 v2, 0x14

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->values:Z

    const/16 v2, 0x4e

    if-nez v0, :cond_1

    const/16 v0, 0x12

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->afRDLog:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static valueOf(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    sget-object v0, Lcom/appsflyer/internal/AFf1sSDK;->AFInAppEventParameterName:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/appsflyer/internal/AFb1qSDK;->afInfoLog:J

    invoke-static {v1, v2, p0, p1}, Lcom/appsflyer/internal/AFf1sSDK;->AFKeystoreWrapper(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    :goto_0
    sget v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    sub-int/2addr v1, p1

    sput v1, Lcom/appsflyer/internal/AFf1sSDK;->AFInAppEventType:I

    sget v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    sget v2, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    aget-char v2, p0, v2

    sget v3, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/appsflyer/internal/AFf1sSDK;->AFInAppEventType:I

    int-to-long v4, v4

    sget-wide v6, Lcom/appsflyer/internal/AFb1qSDK;->afInfoLog:J

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    int-to-char v2, v2

    aput-char v2, p0, v1

    sget v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/appsflyer/internal/AFf1sSDK;->values:I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    :try_start_1
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez p1, :cond_5

    :try_start_3
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_3

    :try_start_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v0, "app_version"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string p3, "app_version"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string p2, "channel"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    if-eqz p4, :cond_7

    :try_start_5
    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    const-string p2, "preInstall"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1

    :cond_7
    :goto_4
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-direct {p0, v3, p1, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-direct {p0, v3, p1, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method final declared-synchronized AFInAppEventType()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->values:Z

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger()V

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final varargs AFInAppEventType(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "public_api_call"

    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method final declared-synchronized AFKeystoreWrapper()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "r_debugging_off"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/appsflyer/internal/AFb1qSDK;->afRDLog:Z

    iput-boolean v2, p0, Lcom/appsflyer/internal/AFb1qSDK;->values:Z

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized AFKeystoreWrapper(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x38

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    if-eq v0, v2, :cond_1

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "server_response"

    invoke-direct {p0, p2, p1, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/2addr p1, v1

    return-void
.end method

.method final afErrorLog()Z
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->afRDLog:Z

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method final afInfoLog()V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v1, v0, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appsflyer/internal/AFb1qSDK;->afErrorLog:Z

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method final declared-synchronized valueOf()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/internal/AFb1qSDK;->valueOf:Lcom/appsflyer/internal/AFb1qSDK;

    sget v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x42

    if-nez v1, :cond_0

    const/16 v1, 0x28

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final valueOf(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFc1zSDK;)V
    .locals 1

    :try_start_0
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1zSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFd1gSDK;)V

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog()Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lcom/appsflyer/internal/AFd1pSDK;

    invoke-direct {p2, p1, p3}, Lcom/appsflyer/internal/AFd1pSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/internal/AFc1zSDK;)V

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1zSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p1

    iget-object p3, p1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v0, p1, p2}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final valueOf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "server_request"

    invoke-direct {p0, p2, p1, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x43

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/16 p1, 0x62

    :goto_0
    if-eq p1, p2, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x33

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method final declared-synchronized values()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1qSDK;->afRDLog:Z

    const-string v0, "r_debugging_on"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x4c

    if-nez v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_1

    const/16 v0, 0x42

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final values(Ljava/lang/Throwable;)V
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v0, :cond_4

    sget v0, Lcom/appsflyer/internal/AFb1qSDK;->getLevel:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v4, 0x32

    if-eqz v0, :cond_2

    const/16 v0, 0x5e

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    if-eq v0, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/16 v0, 0x19

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    :goto_3
    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "exception"

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
