.class public Lcom/tdatamaster/tdm/TDataMaster;
.super Ljava/lang/Object;
.source "TDataMaster.java"


# static fields
.field private static Instance:Lcom/tdatamaster/tdm/TDataMaster; = null

.field public static final TDM_REPORT_SIMPLE_MODE:I = 0x1

.field public static final TDM_REPORT_STANDARD_MODE:I = 0x0

.field private static isInitialized:Z = false

.field private static lifecycle:C = '\u0000'

.field private static mApplication:Landroid/app/Application; = null

.field private static final tag:Ljava/lang/String; = "TDataMaster"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TDataMaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/TDataMaster;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/TDataMaster;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/TDataMaster;->Instance:Lcom/tdatamaster/tdm/TDataMaster;

    const/4 v0, 0x0

    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    sput-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->isInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TDataMaster"

    const-string v1, "TDataMaster Construct"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native TDMEnableDeviceInfo(Z)V
.end method

.method private native TDMEnableReport(Z)V
.end method

.method private native TDMGetSDKVerision()Ljava/lang/String;
.end method

.method private native TDMGetUID()Ljava/lang/String;
.end method

.method private native TDMInit()V
.end method

.method private native TDMPause()V
.end method

.method private native TDMReportBinary(Ljava/lang/String;[BII)V
.end method

.method private native TDMReportEvent(Ljava/lang/String;Ljava/util/Map;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method private native TDMReportLogin(ILjava/lang/String;)V
.end method

.method private native TDMResume()V
.end method

.method private native TDMSetLogLevel(I)V
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 5

    sget-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "getApplication"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/tdatamaster/tdm/TDataMaster;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/tdatamaster/tdm/TDataMaster;
    .locals 1

    sget-object v0, Lcom/tdatamaster/tdm/TDataMaster;->Instance:Lcom/tdatamaster/tdm/TDataMaster;

    return-object v0
.end method

.method public static native setAppDir(Ljava/lang/String;)V
.end method


# virtual methods
.method public addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;)V
    .locals 1

    const-string v0, "All"

    invoke-virtual {p0, p1, v0}, Lcom/tdatamaster/tdm/TDataMaster;->addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)V

    return-void
.end method

.method public addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)V

    return-void
.end method

.method public enableDeviceInfo(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMEnableDeviceInfo(Z)V

    return-void
.end method

.method public enableReport(Z)V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "enableReport"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMEnableReport(Z)V

    return-void
.end method

.method public getBoolDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getBoolDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getTDMSDKVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "getTDMSDKVersion"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMGetSDKVerision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTDMUID()Ljava/lang/String;
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "getTDMUID"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMGetUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/TDataMaster;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tdatamaster/tdm/TDataMaster;->initialize(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tdatamaster/tdm/system/TDMUtils;->SaveConfigInfo(Landroid/content/Context;)V

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMLog;->getLogLevel()I

    move-result v0

    const-string v1, "TDataMaster"

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now Android logLevel is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", please use warning or error level in production"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDataMaster initialize(onCreate), isInitialized: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/tdatamaster/tdm/TDataMaster;->isInitialized:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tdatamaster/tdm/TDataMaster;->isInitialized:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tdatamaster/tdm/system/FileUtils;->GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/system/FileUtils;->Initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->Initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/system/TDMUtils;->Initialize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMInit()V

    sput-boolean v2, Lcom/tdatamaster/tdm/TDataMaster;->isInitialized:Z

    :cond_1
    sget-boolean p1, Lcom/tdatamaster/tdm/TDataMaster;->isInitialized:Z

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnActivityResult requestCode:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TDataMaster"

    invoke-static {p2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->UnregisterReceiver()V

    const/16 v0, 0x20

    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-char v0, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMPause()V

    :cond_0
    sput-char v1, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onRestart()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "OnRestart"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-char v0, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tdatamaster/tdm/TDataMaster;->TDMResume()V

    :cond_0
    sput-char v1, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "OnStart"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TDataMaster"

    const-string v1, "OnStop"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    sput-char v0, Lcom/tdatamaster/tdm/TDataMaster;->lifecycle:C

    return-void
.end method

.method public prepareFileDir(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TDataMaster"

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tdatamaster/tdm/TDataMaster;->setAppDir(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "get public dir error!"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "getExternalFilesDir is null"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sdcard is unavailable, state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportBinary(ILjava/lang/String;[BI)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDataMaster"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srcID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p1, "data is null"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportBinary(Ljava/lang/String;[BII)V

    return-void
.end method

.method public reportEvent(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tdatamaster/tdm/TDataMaster;->reportEvent(ILjava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public reportEvent(ILjava/lang/String;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDataMaster"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srcID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportEvent(Ljava/lang/String;Ljava/util/Map;II)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "eventInfo is null or empty"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportLogin(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportLogin, platform:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDataMaster"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tdatamaster/tdm/TDataMaster;->TDMReportLogin(ILjava/lang/String;)V

    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;J)I
    .locals 4

    const/4 v0, 0x6

    const-string v1, "TDataMaster"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceInfo deviceInfoName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",deviceInfoValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;J)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const-string p1, "can\'t set tdm self field"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_1
    const-string p1, "deviceInfoName is empty"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x6

    const-string v1, "TDataMaster"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceInfo deviceInfoName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",deviceInfoValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const-string p1, "can\'t set tdm self field"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_1
    const-string p1, "deviceInfoName or deviceInfoValue is empty"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setDeviceInfo(Ljava/lang/String;Z)I
    .locals 4

    const/4 v0, 0x6

    const-string v1, "TDataMaster"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceInfo deviceInfoName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",deviceInfoValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;Z)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const-string p1, "can\'t set tdm self field"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_1
    const-string p1, "deviceInfoName is empty"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setLogLevel(I)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetLogLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tdatamaster/tdm/system/TDMUtils;->SetLogLevel(I)V

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/TDataMaster;->TDMSetLogLevel(I)V

    return-void
.end method
