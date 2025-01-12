.class public Lcom/gcore/abase/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "gcloudarch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuArch()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/gcore/abase/utils/DeviceUtils;->nativeGetCpuArch()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method private static native nativeGetCpuArch()Ljava/lang/String;
.end method
