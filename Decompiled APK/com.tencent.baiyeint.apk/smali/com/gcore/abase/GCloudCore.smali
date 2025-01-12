.class public Lcom/gcore/abase/GCloudCore;
.super Ljava/lang/Object;
.source "GCloudCore.java"


# static fields
.field public static Instance:Lcom/gcore/abase/GCloudCore; = null

.field public static final TAG:Ljava/lang/String; = "[GCloudCore]"


# instance fields
.field NetChecker:Lcom/gcore/abase/NetworkStateChecker;

.field private _appVersion:Ljava/lang/String;

.field private mDeviceBrand:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private m_BSSID:Ljava/lang/String;

.field private m_Carrier:I

.field private m_CarrierCode:Ljava/lang/String;

.field private m_CurrentAPN:Ljava/lang/String;

.field private m_DetailNetworkState:I

.field private m_SSID:Ljava/lang/String;

.field private m_cntxt:Landroid/content/Context;

.field m_scReader:Lcom/gcore/abase/SolidConfigReader;

.field private m_szBundleId:Ljava/lang/String;

.field private m_szModel:Ljava/lang/String;

.field private m_szSysVersion:Ljava/lang/String;

.field private m_szUdid:Ljava/lang/String;

.field paths:Lcom/gcore/abase/GCloudCorePaths;

.field private savedMainThread:Ljava/lang/Thread;

.field xsystem:Lcom/gcore/abase/GCloudCoreSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "gcloudcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLibrary libgcloudcore.so error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/gcore/abase/GCloudCore;

    invoke-direct {v0}, Lcom/gcore/abase/GCloudCore;-><init>()V

    sput-object v0, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gcore/abase/GCloudCorePaths;

    invoke-direct {v1}, Lcom/gcore/abase/GCloudCorePaths;-><init>()V

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v1, Lcom/gcore/abase/GCloudCoreSystem;

    invoke-direct {v1}, Lcom/gcore/abase/GCloudCoreSystem;-><init>()V

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    new-instance v1, Lcom/gcore/abase/NetworkStateChecker;

    invoke-direct {v1}, Lcom/gcore/abase/NetworkStateChecker;-><init>()V

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    sget-object v1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    sget-object v1, Lcom/gcore/abase/Carrier;->None:Lcom/gcore/abase/Carrier;

    invoke-virtual {v1}, Lcom/gcore/abase/Carrier;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/gcore/abase/GCloudCore;->m_Carrier:I

    const-string v1, ""

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_CarrierCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_SSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_BSSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_CurrentAPN:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szUdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szBundleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szSysVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->_appVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->mDeviceBrand:Ljava/lang/String;

    new-instance v0, Lcom/gcore/abase/SolidConfigReader;

    invoke-direct {v0}, Lcom/gcore/abase/SolidConfigReader;-><init>()V

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    return-void
.end method

.method private CreateMainHandler()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/gcore/abase/GCloudCore$1;

    invoke-direct {v2, p0}, Lcom/gcore/abase/GCloudCore$1;-><init>(Lcom/gcore/abase/GCloudCore;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateMainHandler success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private GCloudCorecallJNIperform(J)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/gcore/abase/GCloudCore;->nativePerform(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativePerform call error="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[GCloudCore]"

    invoke-static {p2, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/gcore/abase/GCloudCore;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gcore/abase/GCloudCore;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/gcore/abase/GCloudCore;->nativePerform(J)V

    return-void
.end method

.method private cacheSystemInfo(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0, p1}, Lcom/gcore/abase/GCloudCoreSystem;->GetUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szUdid:Ljava/lang/String;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0, p1}, Lcom/gcore/abase/GCloudCoreSystem;->GetBundleId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szBundleId:Ljava/lang/String;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0}, Lcom/gcore/abase/GCloudCoreSystem;->GetModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szModel:Ljava/lang/String;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0}, Lcom/gcore/abase/GCloudCoreSystem;->GetSysVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_szSysVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->xsystem:Lcom/gcore/abase/GCloudCoreSystem;

    invoke-virtual {v0, p1}, Lcom/gcore/abase/GCloudCoreSystem;->GetAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gcore/abase/GCloudCore;->_appVersion:Ljava/lang/String;

    invoke-static {}, Lcom/gcore/abase/GCloudCoreSystem;->getDeviceBrand()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gcore/abase/GCloudCore;->mDeviceBrand:Ljava/lang/String;

    return-void
.end method

.method private callbackFromJNI(J)V
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    const-string v3, "Current Thread:"

    const-string v4, "[GCloudCore]"

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackFromJNI nativePerform Main Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/gcore/abase/GCloudCore;->nativePerform(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativePerform call error="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callbackFromJNI Main Thread:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, p1}, Lcom/gcore/abase/GCloudCore;->sendMsg(Landroid/os/Message;Landroid/os/Handler;)V

    return-void
.end method

.method private checkNetworkState()I
    .locals 2

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->CheckNetworkState(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getDetailNetworkInfo()V
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_CarrierCode:Ljava/lang/String;

    sget-object v1, Lcom/gcore/abase/Carrier;->None:Lcom/gcore/abase/Carrier;

    invoke-virtual {v1}, Lcom/gcore/abase/Carrier;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/gcore/abase/GCloudCore;->m_Carrier:I

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_CurrentAPN:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_BSSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetDetailNetworkState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWiFi:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_SSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetBSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_BSSID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_2G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_3G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_4G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_5G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_UNKNOWN:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/gcore/abase/GCloudCore;->m_DetailNetworkState:I

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetCurrentCarrierCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_CarrierCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/gcore/abase/NetworkStateChecker;->GetCurrentAPN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_CurrentAPN:Ljava/lang/String;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->NetChecker:Lcom/gcore/abase/NetworkStateChecker;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_CarrierCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/gcore/abase/NetworkStateChecker;->GetCurrentCarrier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gcore/abase/GCloudCore;->m_Carrier:I

    :cond_2
    :goto_0
    return-void
.end method

.method private getMetaString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/gcore/abase/SolidConfigReader;->GetMetaString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSolidConfigAllKeys(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2}, Lcom/gcore/abase/SolidConfigReader;->GetAllKeys(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private getSolidConfigInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gcore/abase/SolidConfigReader;->GetInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private isSolidConfigContainKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2}, Lcom/gcore/abase/SolidConfigReader;->IsContainKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private native nativeCreate(Landroid/app/Activity;Landroid/content/Context;Lcom/gcore/abase/GCloudCorePaths;)V
.end method

.method private native nativeNetworkStateChangeNotify(I)V
.end method

.method private native nativePause()V
.end method

.method private native nativePerform(J)V
.end method

.method private native nativeResume()V
.end method

.method private declared-synchronized sendMsg(Landroid/os/Message;Landroid/os/Handler;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p2, "[GCloudCore]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMsg before sendMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gcore/abase/GCloudCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public Initialize(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "[GCloudCore]"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/gcore/abase/GCloudCore;->getPaths(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/gcore/abase/GCloudCore;->savedMainThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/gcore/abase/GCloudCore;->CreateMainHandler()V

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/gcore/abase/GCloudCore;->cacheSystemInfo(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/gcore/abase/SolidConfigReader;->Init(Landroid/content/Context;)V

    invoke-static {}, Lcom/gcore/abase/URLRequest;->init()V

    invoke-static {p1}, Lcom/gcore/abase/utils/DialogUtils;->init(Landroid/app/Activity;)V

    sget-object v1, Lcom/gcore/abase/SecurityStore;->Instance:Lcom/gcore/abase/SecurityStore;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/gcore/abase/SecurityStore;->init(Landroid/content/Context;)V

    sget-object v1, Lcom/gcore/gcloud/tasksystem/TaskSystem;->Instance:Lcom/gcore/gcloud/tasksystem/TaskSystem;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/gcore/gcloud/tasksystem/TaskSystem;->init(Landroid/content/Context;)V

    :try_start_0
    iget-object v1, p0, Lcom/gcore/abase/GCloudCore;->m_cntxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    invoke-direct {p0, p1, v1, v2}, Lcom/gcore/abase/GCloudCore;->nativeCreate(Landroid/app/Activity;Landroid/content/Context;Lcom/gcore/abase/GCloudCorePaths;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeCreate call error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "GCloudCore Initialize ends"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public NetworkStateChangeNotify(I)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/gcore/abase/GCloudCore;->nativeNetworkStateChangeNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeNetworkStateChangeNotify call error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[GCloudCore]"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Pause()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/gcore/abase/GCloudCore;->nativePause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativePause call error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Resume()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/gcore/abase/GCloudCore;->nativeResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeResume call error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCloudCore]"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method getPaths(Landroid/content/Context;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->DataPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->CachePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    iget-object v6, v6, Lcom/gcore/abase/GCloudCorePaths;->CachePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->AppPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->InnerCachePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/gcore/abase/GCloudCorePaths;->InnerFilePath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "/Android/data/"

    const-string v5, "Create cache dir Error"

    const-string v6, "GCloudCore"

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cache"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    goto :goto_0

    :catch_0
    invoke-static {v6, v5}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/gcore/abase/GCloudCorePaths;->CachePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/files"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v6, v5}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object v0, v1

    :goto_2
    iget-object p1, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/gcore/abase/GCloudCorePaths;->DataPath:Ljava/lang/String;

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AppPath:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    iget-object v0, v0, Lcom/gcore/abase/GCloudCorePaths;->AppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",CachePath:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    iget-object v0, v0, Lcom/gcore/abase/GCloudCorePaths;->CachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",DataPath:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->paths:Lcom/gcore/abase/GCloudCorePaths;

    iget-object v0, v0, Lcom/gcore/abase/GCloudCorePaths;->DataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[GCloudCore]"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSolidConfigBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gcore/abase/SolidConfigReader;->GetBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getSolidConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gcore/abase/GCloudCore;->m_scReader:Lcom/gcore/abase/SolidConfigReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gcore/abase/SolidConfigReader;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
