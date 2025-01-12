.class public Lnet/aihelp/core/util/bus/Logger$Default;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/bus/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lnet/aihelp/core/util/bus/Logger;
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/bus/util/AndroidLogger;->isAndroidLogAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/bus/Logger$Default;->getAndroidMainLooperOrNull()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/aihelp/core/util/bus/util/AndroidLogger;

    const-string v1, "EventBus"

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/bus/util/AndroidLogger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/aihelp/core/util/bus/Logger$SystemOutLogger;

    invoke-direct {v0}, Lnet/aihelp/core/util/bus/Logger$SystemOutLogger;-><init>()V

    :goto_0
    return-object v0
.end method

.method static getAndroidMainLooperOrNull()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
