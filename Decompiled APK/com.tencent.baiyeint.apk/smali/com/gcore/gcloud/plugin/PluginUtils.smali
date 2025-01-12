.class public Lcom/gcore/gcloud/plugin/PluginUtils;
.super Ljava/lang/Object;
.source "PluginUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GCloudCore"

.field private static hasGCloudCoreLoaded:Z = false

.field private static nativePluginManager:J

.field private static nativeServiceManager:J


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

.method public static GetNativePluginManager()J
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetNativePluginManager nativePluginManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePluginManager:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloudCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePluginManager:J

    return-wide v0
.end method

.method public static GetNativeServiceManager()J
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetNativeServiceManager nativeServiceManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeServiceManager:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloudCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeServiceManager:J

    return-wide v0
.end method

.method public static PostStartup()V
    .locals 0

    invoke-static {}, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePostStartup()V

    return-void
.end method

.method public static PreShutdown()V
    .locals 0

    invoke-static {}, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePreShutdown()V

    return-void
.end method

.method public static SetNativePluginManager(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetNativePluginManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloudCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide p0, Lcom/gcore/gcloud/plugin/PluginUtils;->nativePluginManager:J

    return-void
.end method

.method public static SetNativeServiceManager(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetNativeServiceManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCloudCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide p0, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeServiceManager:J

    return-void
.end method

.method public static Shutdown()V
    .locals 0

    invoke-static {}, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeShutdown()V

    return-void
.end method

.method public static Startup()V
    .locals 0

    invoke-static {}, Lcom/gcore/gcloud/plugin/PluginUtils;->nativeStartup()V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/gcore/gcloud/plugin/PluginUtils;->hasGCloudCoreLoaded:Z

    const-string v1, "GCloudCore"

    if-nez v0, :cond_0

    const-string/jumbo v0, "try to load libgcloudcore.so for the first time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gcloudcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gcore/gcloud/plugin/PluginUtils;->hasGCloudCoreLoaded:Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCloudUtils.loadLibrary:lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static native nativePostStartup()V
.end method

.method private static native nativePreShutdown()V
.end method

.method private static native nativeShutdown()V
.end method

.method private static native nativeStartup()V
.end method
