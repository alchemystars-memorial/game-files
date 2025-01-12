.class public Lcom/tdatamaster/tdm/system/TDMUtils;
.super Ljava/lang/Object;
.source "TDMUtils.java"


# static fields
.field private static final FY_CHANNEL_ID_DEFAULT:Ljava/lang/String; = "00000000"

.field private static instance:Lcom/tdatamaster/tdm/system/TDMUtils; = null

.field private static final tag:Ljava/lang/String; = "TDMUtils"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

.field private m_szAbroad:Z

.field private m_szAppChannel:Ljava/lang/String;

.field private m_szAppID:Ljava/lang/String;

.field private m_szAppKey:Ljava/lang/String;

.field private m_szBeaconAppId:Ljava/lang/String;

.field private m_szBundleId:Ljava/lang/String;

.field private m_szFilePath:Ljava/lang/String;

.field private m_szLogLevel:I

.field private m_szRouterAddressFormal:Ljava/lang/String;

.field private m_szRouterAddressTest:Ljava/lang/String;

.field private m_szTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tdatamaster/tdm/system/TDMUtils;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/system/TDMUtils;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/system/TDMUtils;->instance:Lcom/tdatamaster/tdm/system/TDMUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mInitialized:Z

    iput-boolean v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szTestMode:Z

    iput-boolean v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAbroad:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szLogLevel:I

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAppID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAppKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAppChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szBundleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szRouterAddressFormal:Ljava/lang/String;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szRouterAddressTest:Ljava/lang/String;

    const-string v0, "000001ZG9U3Z6L9O"

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szBeaconAppId:Ljava/lang/String;

    return-void
.end method

.method private GetAvailMemory()J
    .locals 2

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private GetAvailSpace()J
    .locals 2

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetAvailSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public static GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;
    .locals 1

    sget-object v0, Lcom/tdatamaster/tdm/system/TDMUtils;->instance:Lcom/tdatamaster/tdm/system/TDMUtils;

    return-object v0
.end method

.method private native Init()V
.end method

.method private native OnNetworkChanged(ILjava/lang/String;)V
.end method

.method private SaveNetworkType()V
    .locals 2

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetNetworkType(Landroid/content/Context;)Lcom/tdatamaster/tdm/system/NetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tdatamaster/tdm/system/NetworkType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tdatamaster/tdm/system/TDMUtils;->OnNetworkChanged(IZ)V

    return-void
.end method


# virtual methods
.method public native EncryptField(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public Initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TDMUtils"

    if-nez p1, :cond_0

    const-string p1, "context is null. initialize failed!"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mInitialized:Z

    if-nez v1, :cond_1

    const-string v1, "Initialize begin"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/tdatamaster/tdm/database/TDMDataBase;->getInstance()Lcom/tdatamaster/tdm/database/TDMDataBase;

    move-result-object p1

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/tdatamaster/tdm/database/TDMDataBase;->initialize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/tdatamaster/tdm/system/TDMUtils;->Init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mInitialized:Z

    const-string p1, "Initialize end"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public OnNetworkChanged(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object p2

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/tdatamaster/tdm/system/TDMUtils;->OnNetworkChanged(ILjava/lang/String;)V

    return-void
.end method

.method public RegisterReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TDMUtils"

    const-string v2, "OnResume Exception"

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public SaveConfigInfo(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.GCloud.GameId"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAppID:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.AppId"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAppID:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.AppKey"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAppKey:Ljava/lang/String;

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.AppChannel"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAppChannel:Ljava/lang/String;

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.Test"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szTestMode:Z

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.Abroad"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAbroad:Z

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szLogLevel:I

    const-string v2, "GCloud.TDM.LogLevel"

    invoke-virtual {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szLogLevel:I

    invoke-static {v0}, Lcom/tdatamaster/tdm/system/TDMLog;->setLogLevel(I)V

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.TGEMIT_ROUTER_ADDRESS_FORMAL"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szRouterAddressFormal:Ljava/lang/String;

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.TGEMIT_ROUTER_ADDRESS_TEST"

    invoke-virtual {v0, p1, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szRouterAddressTest:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_szRouterAddressFormal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szRouterAddressFormal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDMUtils"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_szRouterAddressTest = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szRouterAddressTest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szFilePath:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    const-string v2, "GCloud.TDM.BeaconAppId"

    invoke-virtual {v0, p1, v2}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szBeaconAppId:Ljava/lang/String;

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_szBeaconAppId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native SetDeviceInfoEncryptKey(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public SetLogLevel(I)V
    .locals 0

    invoke-static {p1}, Lcom/tdatamaster/tdm/system/TDMLog;->setLogLevel(I)V

    return-void
.end method

.method public UnregisterReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mNetworkReceiver:Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TDMUtils"

    const-string v2, "OnPause Exception"

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetAppVersion(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBeaconAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szBeaconAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetBundleId(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDiskCheckCritical()I
    .locals 4

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v3, "GCloud.TDM.DiskCheckCritical"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDiskCheckInterval()I
    .locals 4

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v3, "GCloud.TDM.DiskCheckInterval"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFyChannelId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->mContext:Landroid/content/Context;

    const-string v1, "Error"

    if-nez v0, :cond_0

    const-string v0, "getFlyChannelId failed\uff0cneed init tdm first"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "00000000"

    :cond_1
    return-object v2
.end method

.method public getInternalAvailSpace()J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isAbroad()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szAbroad:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils;->m_szTestMode:Z

    return v0
.end method
