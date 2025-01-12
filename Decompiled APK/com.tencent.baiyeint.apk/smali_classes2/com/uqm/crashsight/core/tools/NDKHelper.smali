.class public Lcom/uqm/crashsight/core/tools/NDKHelper;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static final coreSoName:Ljava/lang/String; = "CrashSight"

.field private static mIsLoadedSO:Z = false

.field private static mIsLoadingSO:Z = false


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

.method public static checkSOLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadedSO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadingSO:Z

    if-eqz v0, :cond_0

    const-string v0, "--------------------------------------------\n.so has not been loaded. To use JNI helper, please initialize with \nUQMPlatform.initialize (Activity activity);\n--------------------------------------------\n"

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static loadPluginByReflection()Z
    .locals 1

    :try_start_0
    const-string v0, "CrashSight"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static loadSO()Z
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadedSO:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadingSO:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadingSO:Z

    const-string v1, "try to load CrashSight"

    invoke-static {v1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/core/tools/NDKHelper;->loadPluginByReflection()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadedSO:Z

    goto :goto_0

    :cond_0
    const-string v0, "CrashSight loading failed."

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CrashSight have been loaded"

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadingSO:Z

    sget-boolean v0, Lcom/uqm/crashsight/core/tools/NDKHelper;->mIsLoadedSO:Z

    return v0
.end method
