.class public Lcom/intlgame/api/INTLSDK;
.super Ljava/lang/Object;
.source "INTLSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/api/INTLSDK$Permissin;,
        Lcom/intlgame/api/INTLSDK$Deeplink;,
        Lcom/intlgame/api/INTLSDK$Accelerator;,
        Lcom/intlgame/api/INTLSDK$Config;,
        Lcom/intlgame/api/INTLSDK$Update;,
        Lcom/intlgame/api/INTLSDK$Tools;,
        Lcom/intlgame/api/INTLSDK$Push;,
        Lcom/intlgame/api/INTLSDK$LBS;,
        Lcom/intlgame/api/INTLSDK$Dir;,
        Lcom/intlgame/api/INTLSDK$Customer;,
        Lcom/intlgame/api/INTLSDK$Notice;,
        Lcom/intlgame/api/INTLSDK$Analytics;,
        Lcom/intlgame/api/INTLSDK$Compilance;,
        Lcom/intlgame/api/INTLSDK$Group;,
        Lcom/intlgame/api/INTLSDK$Friend;,
        Lcom/intlgame/api/INTLSDK$WebView;,
        Lcom/intlgame/api/INTLSDK$Auth;
    }
.end annotation


# static fields
.field private static final LABEL_ANDROID_LOCAL_NOTIFICATION_ENABLE:Ljava/lang/String; = "ANDROID_LOCAL_NOTIFICATION_ENABLE"

.field private static final LABEL_LIFECYCLE:Ljava/lang/String; = "LIFECYCLE"

.field private static final LABEL_LIFECYCLE_SCHEME:Ljava/lang/String; = "LIFECYCLE_SCHEME_ENABEL"

.field private static SO_NAME:Ljava/lang/String; = "INTLCore"

.field private static volatile mActivityCached:Landroid/app/Activity; = null

.field private static mActivityCur:Landroid/app/Activity; = null

.field private static mDisplayCutout:Lcom/intlgame/core/cutout/DisplayCutoutManager; = null

.field private static mIsPreRegisterLoaded:Z = false

.field private static volatile mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/intlgame/api/INTLSDK;->mActivityCached:Landroid/app/Activity;

    return-object v0
.end method

.method public static getActivityCur()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/intlgame/api/INTLSDK;->mActivityCur:Landroid/app/Activity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/intlgame/api/INTLSDK;->mActivityCached:Landroid/app/Activity;

    :cond_0
    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)Z
    .locals 4

    sput-object p0, Lcom/intlgame/api/INTLSDK;->mActivityCached:Landroid/app/Activity;

    invoke-static {p0}, Lcom/intlgame/foundation/NDKHelper;->setActivity(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->setActivity(Landroid/app/Activity;)V

    :try_start_0
    invoke-static {}, Lcom/intlgame/foundation/NDKHelper;->loadSO()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/intlgame/api/INTLSDK;->SO_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/intlgame/api/INTLSDK;->SO_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so library is loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/intlgame/api/INTLSDK;->SO_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so loading failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/api/config/INTLConfig;->setProjectID(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->GetInstance()Lcom/intlgame/core/device_info/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/intlgame/core/device_info/DeviceInfoHolder;->Initialize(Landroid/content/Context;)V

    const-class v0, Lcom/intlgame/core/cutout/DisplayCutoutManager;

    invoke-static {v0}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/cutout/DisplayCutoutManager;

    sput-object v0, Lcom/intlgame/api/INTLSDK;->mDisplayCutout:Lcom/intlgame/core/cutout/DisplayCutoutManager;

    invoke-virtual {v0, p0}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->initialize(Landroid/app/Activity;)V

    const-string v0, "ANDROID_LOCAL_NOTIFICATION_ENABLE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localNotificationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-class v0, Lcom/intlgame/core/push/LocalNotificationManager;

    invoke-static {v0}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/push/LocalNotificationManager;

    invoke-virtual {v0, p0}, Lcom/intlgame/core/push/LocalNotificationManager;->initialize(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    if-nez v0, :cond_4

    const-class v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-static {v0}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/lifecycle/LifeCycleManager;

    sput-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    new-instance v0, Lcom/intlgame/core/lifecycle/LifeCycleNative;

    invoke-direct {v0}, Lcom/intlgame/core/lifecycle/LifeCycleNative;-><init>()V

    new-instance v2, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;

    invoke-direct {v2}, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;-><init>()V

    sget-object v3, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v3, v0}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/intlgame/core/interfaces/ILifeCycle;)V

    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, v2}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/intlgame/core/interfaces/ILifeCycle;)V

    const-string v0, "LIFECYCLE"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intlgame/api/INTLSDK;->preLifeCycleMonitor(Landroid/app/Activity;[Ljava/lang/String;)V

    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->initialize(Landroid/app/Activity;)V

    sget-object p0, Lcom/intlgame/api/INTLSDK;->mActivityCached:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    const-string v0, "intent = mActivityCached.getIntent() is null"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_1
    const-string v0, "LIFECYCLE_SCHEME_ENABEL"

    invoke-static {v0, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/intlgame/SchemeLifeCycleObserver;

    invoke-direct {v0}, Lcom/intlgame/SchemeLifeCycleObserver;-><init>()V

    sget-object v1, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v1, v0}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/intlgame/core/interfaces/ILifeCycle;)V

    :cond_3
    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->execOnCreate(Landroid/content/Intent;)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->execOnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->execOnNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->execOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method private static declared-synchronized preLifeCycleMonitor(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/intlgame/api/INTLSDK;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/intlgame/api/INTLSDK;->mActivityCached:Landroid/app/Activity;

    sget-boolean p0, Lcom/intlgame/api/INTLSDK;->mIsPreRegisterLoaded:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length p0, p1

    if-lez p0, :cond_1

    array-length p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "com.intlgame.%sLifeCycleObserver"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/intlgame/tools/INTLModules;->getInstance()Lcom/intlgame/tools/INTLModules;

    move-result-object v4

    const-class v6, Lcom/intlgame/core/interfaces/ILifeCycle;

    invoke-virtual {v4, v6, v3}, Lcom/intlgame/tools/INTLModules;->getChannelInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intlgame/core/interfaces/ILifeCycle;

    if-eqz v4, :cond_0

    sget-object v3, Lcom/intlgame/api/INTLSDK;->mLifeCycleManager:Lcom/intlgame/core/lifecycle/LifeCycleManager;

    invoke-virtual {v3, v4}, Lcom/intlgame/core/lifecycle/LifeCycleManager;->addActivityLifeMonitor(Lcom/intlgame/core/interfaces/ILifeCycle;)V

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' hook lifecycle error, make sure there is such class !!!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_1
    sput-boolean v5, Lcom/intlgame/api/INTLSDK;->mIsPreRegisterLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    sput-boolean v1, Lcom/intlgame/api/INTLSDK;->mIsPreRegisterLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setActivityCur(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/intlgame/api/INTLSDK;->mActivityCur:Landroid/app/Activity;

    return-void
.end method
