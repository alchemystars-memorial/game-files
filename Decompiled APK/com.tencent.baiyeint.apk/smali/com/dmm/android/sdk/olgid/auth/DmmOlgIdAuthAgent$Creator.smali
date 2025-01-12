.class public Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent$Creator;
.super Ljava/lang/Object;
.source "DmmOlgIdAuthAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;
    .locals 0

    if-eqz p9, :cond_0

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->getInstance(Landroid/content/Context;)Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p10, :cond_1

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;->createInstance(Landroid/content/Context;)Lcom/dmm/android/sdk/olgid/auth/emulator/DmmOlgIdEmulatorAuthAgent;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p8}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;

    move-result-object p0

    :goto_0
    return-object p0
.end method
