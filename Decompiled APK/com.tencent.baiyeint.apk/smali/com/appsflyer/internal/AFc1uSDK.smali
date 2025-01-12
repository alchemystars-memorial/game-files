.class public final Lcom/appsflyer/internal/AFc1uSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AFInAppEventParameterName:Ljava/lang/String; = null

.field private static AFInAppEventType:Ljava/lang/String; = null

.field private static AFKeystoreWrapper:Ljava/lang/String; = null

.field private static AFLogger$LogLevel:I = 0x1

.field private static afDebugLog:I

.field private static afRDLog:I

.field private static valueOf:Ljava/lang/String;

.field private static values:Ljava/lang/String;


# instance fields
.field private final AFLogger:Lcom/appsflyer/AppsFlyerProperties;

.field private final afErrorLog:Lcom/appsflyer/internal/AFb1zSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName()V

    const-string v0, "https://%smonitorsdk.%s/remote-debug?app_id="

    sput-object v0, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v0, "https://cdn-settings.%s/android/v1/%s/settings"

    sput-object v0, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventType:Ljava/lang/String;

    const-string v0, "https://cdn-testsettings.%s/android/v1/%s/settings"

    sput-object v0, Lcom/appsflyer/internal/AFc1uSDK;->valueOf:Ljava/lang/String;

    const-string v0, "https://%sgcdsdk.%s/install_data/v4.0/"

    sput-object v0, Lcom/appsflyer/internal/AFc1uSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const-string v0, "https://%sonelink.%s/shortlink-sdk/v2"

    sput-object v0, Lcom/appsflyer/internal/AFc1uSDK;->values:Ljava/lang/String;

    sget v0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFb1zSDK;Lcom/appsflyer/internal/AFb1aSDK;Lcom/appsflyer/AppsFlyerProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1uSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1zSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger:Lcom/appsflyer/AppsFlyerProperties;

    return-void
.end method

.method private AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFb1wSDK;",
            "Lcom/appsflyer/internal/AFc1pSDK<",
            "TT;>;)",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1uSDK;->valueOf()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;Z)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1uSDK;->valueOf()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;Z)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    const/16 p2, 0x12

    :try_start_0
    div-int/2addr p2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    sget p2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0xb

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v0, 0x3b

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    const/16 p2, 0x2c

    :goto_2
    if-eq p2, v0, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method private AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;Z)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFb1wSDK;",
            "Lcom/appsflyer/internal/AFc1pSDK<",
            "TT;>;Z)",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p3, p1, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName:Z

    iget-object p3, p0, Lcom/appsflyer/internal/AFc1uSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1zSDK;

    new-instance v0, Lcom/appsflyer/internal/AFc1wSDK;

    iget-object p3, p3, Lcom/appsflyer/internal/AFb1zSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1tSDK;

    invoke-direct {v0, p1, p3, p2}, Lcom/appsflyer/internal/AFc1wSDK;-><init>(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1tSDK;Lcom/appsflyer/internal/AFc1pSDK;)V

    sget p1, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-ne p1, p2, :cond_1

    return-object v0

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

.method private static AFInAppEventParameterName(IIZILjava/lang/String;)Ljava/lang/String;
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

    sget v5, Lcom/appsflyer/internal/AFc1uSDK;->afRDLog:I

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

.method private static AFInAppEventParameterName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appsflyer.com"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x5c

    if-nez v1, :cond_0

    const/16 v1, 0x49

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v3, 0x25

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_1

    sget v1, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/2addr v1, v3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/2addr v1, v5

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz p0, :cond_4

    sget p0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/2addr p0, v5

    if-eqz p0, :cond_2

    move p0, v4

    goto :goto_2

    :cond_2
    move p0, v6

    :goto_2
    if-ne p0, v6, :cond_3

    sget-object p0, Lcom/appsflyer/internal/AFc1uSDK;->valueOf:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    sget-object p0, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventType:Ljava/lang/String;

    :goto_3
    new-array v2, v5, [Ljava/lang/Object;

    const/16 v7, 0x5b

    if-eqz v1, :cond_5

    move v3, v7

    :cond_5
    if-eq v3, v7, :cond_6

    const-string v0, "appsflyersdk.com"

    goto :goto_4

    :cond_6
    sget v1, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/2addr v1, v5

    :goto_4
    aput-object v0, v2, v4

    aput-object p1, v2, v6

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static AFInAppEventParameterName()V
    .locals 1

    const/16 v0, 0xc2

    sput v0, Lcom/appsflyer/internal/AFc1uSDK;->afRDLog:I

    return-void
.end method

.method private static varargs AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    const-string/jumbo v1, "v2"

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x13

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    if-eq p1, p2, :cond_1

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

.method private AFKeystoreWrapper()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "build_number"

    const-string v2, "6.9.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1aSDK;->values:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v2, "appsFlyerCount"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "counter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int v2, v2, 0x129

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    const-string v5, "\u0007\ufffd\ufffb\u000b\ufffa"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(IIZILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v2, v1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFb1vSDK;-><init>()V

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platformextension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private valueOf()Z
    .locals 5

    sget v0, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x61

    if-nez v0, :cond_0

    const/16 v0, 0x5d

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "http_cache"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger:Lcom/appsflyer/AppsFlyerProperties;

    invoke-virtual {v0, v2, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eq v0, v4, :cond_4

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger:Lcom/appsflyer/AppsFlyerProperties;

    invoke-virtual {v0, v2, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    if-eq v0, v4, :cond_4

    :goto_3
    return v4

    :cond_4
    sget v0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    return v3
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v3, "GET"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFc1uSDK;->values:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1uSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v5

    const-string v7, "build_number"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Af-UUID"

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "Af-Meta-Sdk-Ver"

    invoke-interface {v8, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "counter"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Af-Meta-Counter"

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "model"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Af-Meta-Model"

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "platformextension"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Af-Meta-Platform"

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "sdk"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "Af-Meta-System-Version"

    invoke-interface {v8, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0xc

    invoke-static {v9, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    add-int/lit16 v11, v11, 0x122

    invoke-static {v9}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x14

    shr-int/lit8 v12, v12, 0x6

    const/4 v13, 0x5

    rsub-int/lit8 v12, v12, 0x5

    const-string v14, "\t\ufff3\uffcd\u0006\uffe1\u0005\u0012\u0015\u0014\u0001\u000e\u0007"

    invoke-static {v5, v11, v10, v12, v14}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(IIZILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-array v11, v13, [Ljava/lang/String;

    aput-object v3, v11, v9

    aput-object v2, v11, v10

    aput-object v0, v11, v6

    const/4 v0, 0x3

    aput-object v1, v11, v0

    const/4 v0, 0x4

    aput-object v7, v11, v0

    move-object/from16 v0, p4

    invoke-static {v0, v2, v11}, Lcom/appsflyer/internal/AFc1uSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/appsflyer/internal/AFb1wSDK;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v4

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance v0, Lcom/appsflyer/internal/AFc1qSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1qSDK;-><init>()V

    move-object v1, p0

    invoke-direct {p0, v7, v0}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object v0

    sget v2, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/2addr v2, v6

    if-eqz v2, :cond_0

    move v9, v10

    :cond_0
    if-nez v9, :cond_1

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

.method public final AFInAppEventParameterName(Ljava/util/Map;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    const/4 v12, 0x0

    const-string v10, "POST"

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance v0, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1oSDK;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eq v0, v6, :cond_1

    return-object p1

    :cond_1
    const/16 v0, 0x30

    :try_start_0
    div-int/2addr v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final AFInAppEventParameterName(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "https://%sviap.%s/api/v1/android/validate_purchase?app_id="

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p1, v0, v4

    const-string p1, ""

    const/16 p2, 0x30

    invoke-static {p1, p2, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x3d

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1f

    invoke-static {p1, v2, v3}, Lcom/appsflyer/internal/AFa1vSDK;->values(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v2, "AFKeystoreWrapper"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v6, Ljava/util/Map;

    aput-object v6, v3, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x1

    const-string v9, "POST"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance v0, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1oSDK;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/2addr v0, v5

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-ne v0, p2, :cond_1

    return-object p1

    :cond_1
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    throw p2

    :cond_2
    throw p1
.end method

.method public final AFInAppEventType(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/appsflyer/internal/AFb1wSDK;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const-string v3, "GET"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    const/16 p1, 0x2710

    iput p1, v6, Lcom/appsflyer/internal/AFb1wSDK;->afDebugLog:I

    const/4 p1, 0x0

    iput-boolean p1, v6, Lcom/appsflyer/internal/AFb1wSDK;->AFKeystoreWrapper:Z

    new-instance p1, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1oSDK;-><init>()V

    invoke-direct {p0, v6, p1}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1tSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1tSDK;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x3e

    invoke-static {p2, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    int-to-char v4, v4

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1vSDK;->values(ICI)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v4, "AFKeystoreWrapper"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Lcom/appsflyer/internal/AFa1tSDK;

    aput-object v6, v5, p2

    const-class p2, Ljava/lang/String;

    aput-object p2, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p2, Lcom/appsflyer/internal/AFb1wSDK;

    iget-object v2, p1, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper()Z

    move-result v6

    const-string v4, "POST"

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance p1, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1oSDK;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0x31

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/2addr p2, v0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    throw p1
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "ttl"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1uSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object p2

    const-string v1, "meta"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    const/4 v3, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/2addr v2, v3

    const-string v4, "brand_domain"

    if-eqz v2, :cond_4

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1pSDK;->values(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v7, "POST"

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    invoke-static {v0, v0, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0xc

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int v2, v2, 0x122

    invoke-static {v1, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    const-string v5, "\t\ufff3\uffcd\u0006\uffe1\u0005\u0012\u0015\u0014\u0001\u000e\u0007"

    invoke-static {v0, v2, p2, v4, v5}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(IIZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    aput-object v7, v2, v1

    aput-object p3, v2, p2

    invoke-static {p5, p4, v2}, Lcom/appsflyer/internal/AFc1uSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v8, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/appsflyer/internal/AFb1wSDK;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/appsflyer/internal/AFc1uSDK;->values:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/4 v9, 0x0

    move-object v4, p4

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance p1, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1oSDK;-><init>()V

    invoke-direct {p0, p4, p1, p2}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;Z)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0x67

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/2addr p2, v3

    const/16 p3, 0x47

    if-nez p2, :cond_2

    const/16 p2, 0x48

    goto :goto_2

    :cond_2
    move p2, p3

    :goto_2
    if-eq p2, p3, :cond_3

    const/4 p2, 0x3

    :try_start_0
    div-int/2addr p2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    return-object p1

    :cond_4
    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFe1ySDK;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1ySDK;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType()[B

    move-result-object v2

    new-instance v6, Lcom/appsflyer/internal/AFb1wSDK;

    iget-object v1, p1, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    const-string v3, "POST"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance p1, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1oSDK;-><init>()V

    invoke-direct {p0, v6, p1}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public final valueOf(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/internal/AFc1uSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?devkey="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&device_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1uSDK;->values(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string p1, "Connection"

    const-string p2, "close"

    invoke-interface {v7, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-string v6, "GET"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    const/16 p2, 0x2710

    iput p2, p1, Lcom/appsflyer/internal/AFb1wSDK;->afDebugLog:I

    new-instance p2, Lcom/appsflyer/internal/AFc1vSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFc1vSDK;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0x33

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/2addr p2, v2

    return-object p1
.end method

.method public final valueOf(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "https://%sars.%s/api/v2/android/validate_subscription?app_id="

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1uSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1aSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p1, v0, v4

    const-string p1, ""

    invoke-static {p1, v4}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x3e

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float p2, p2, v2

    add-int/lit8 p2, p2, -0x1

    int-to-char p2, p2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    invoke-static {p1, p2, v2}, Lcom/appsflyer/internal/AFa1vSDK;->values(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "AFKeystoreWrapper"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/Map;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x1

    const-string v9, "POST"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    new-instance p2, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFc1oSDK;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0x1d

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    rem-int/2addr p2, v1

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    throw p1
.end method

.method public final values(ZLjava/lang/String;I)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "I)",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Lcom/appsflyer/internal/AFb1sSDK;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/appsflyer/internal/AFb1wSDK;

    const-string p3, "GET"

    invoke-direct {p2, p1, p3}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x5dc

    iput p1, p2, Lcom/appsflyer/internal/AFb1wSDK;->afDebugLog:I

    new-instance p1, Lcom/appsflyer/internal/AFc1rSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1rSDK;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1pSDK;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1uSDK;->AFLogger$LogLevel:I

    add-int/lit8 p2, p2, 0x5

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFc1uSDK;->afDebugLog:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1
.end method
