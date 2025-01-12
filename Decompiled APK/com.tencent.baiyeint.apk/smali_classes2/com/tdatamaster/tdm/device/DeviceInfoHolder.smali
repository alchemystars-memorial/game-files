.class public Lcom/tdatamaster/tdm/device/DeviceInfoHolder;
.super Ljava/lang/Object;
.source "DeviceInfoHolder.java"


# static fields
.field private static final REMOTE_DEVICE_INFO_ENCRYPT_KEY_KEY:Ljava/lang/String; = "remote_device_info_encrypt_key"

.field private static final REMOTE_DEVICE_INFO_ENCRYPT_OFFSET_KEY:Ljava/lang/String; = "remote_device_info_encrypt_offset"

.field private static final REMOTE_DISABLE_COLLECT_DEVICE_INFO_NAME_KEY:Ljava/lang/String; = "remote_disable_collect_device_info_name"

.field private static final REMOTE_ENCRYPT_COLLECT_DEVICE_INFO_NAME_KEY:Ljava/lang/String; = "remote_encrypt_collect_device_info_name"

.field private static instance:Lcom/tdatamaster/tdm/device/DeviceInfoHolder; = null

.field private static final tag:Ljava/lang/String; = "DeviceInfoHolder"


# instance fields
.field private lock:Ljava/lang/Object;

.field private mAsynDeviceInfoNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceInfoBoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeviceInfoLongMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/MultiValueMap<",
            "Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfoStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisableDeviceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEncryptDeviceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mSynDeviceInfoNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSynInfoCollectComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->instance:Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mInitialized:Z

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynInfoCollectComplete:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDisableDeviceInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mEncryptDeviceInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/tdatamaster/tdm/device/MultiValueMap;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/device/MultiValueMap;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "AndroidID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "AppVersion"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "Brand"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "BundleId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "CpuCore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "CpuFreq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "CPUName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "DeviceID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "MacAddr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "Model"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "ScreenHeight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "ScreenWidth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "SysVersion"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "TotalMem"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "TotalSpace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "UUID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "QIMEI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "QIMEI36"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/ArrayList;

    const-string v1, "TuringTicket"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;
    .locals 1

    sget-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->instance:Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    return-object v0
.end method

.method private collectAllDeviceInfoFromSystem(Landroid/content/Context;)V
    .locals 1

    const-string p1, "DeviceInfoHolder"

    const-string v0, "start collectAllDeviceInfoFromSystem"

    invoke-static {p1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynInfoCollectComplete:Z

    if-eqz v0, :cond_0

    const-string v0, "need not collectAllDeviceInfoFromSystem!"

    invoke-static {p1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getDisableDeviceInfoNameList()V

    invoke-direct {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getEncryptDeviceInfoNameList()V

    invoke-direct {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfoEncryptKey()V

    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->collectSynDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->collectAsynDeviceInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynInfoCollectComplete:Z

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->notifySynDeviceInfoCollectComplete()V

    return-void
.end method

.method private collectAsynDeviceInfo(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collectAsynDeviceInfo deviceInfoName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfoHolder"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isEnableDeviceInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "deviceInfoValueType get fail, disable"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isDeviceInfoCollectEnable(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "deviceInfoValueType get fail"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_2

    const-string v0, "deviceInfoValue type is String"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    const-string v2, "Unknown"

    goto :goto_0

    :cond_2
    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_3

    const-string v0, "deviceInfoValue type is Long"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_4

    const-string v0, "deviceInfoValue type is Boolean"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    :goto_0
    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v4, 0x3

    invoke-direct {v3, p1, v2, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is disable collect"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string p1, "unsupported deviceInfoValue type"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x53b9ad43

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_8

    const v4, 0x497c899

    if-eq v3, v4, :cond_7

    const v2, 0x3dc80cbc

    if-eq v3, v2, :cond_6

    goto :goto_1

    :cond_6
    const-string v2, "QIMEI36"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v6

    goto :goto_2

    :cond_7
    const-string v3, "QIMEI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    const-string v2, "TuringTicket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v5

    goto :goto_2

    :cond_9
    :goto_1
    move v2, v0

    :goto_2
    if-eqz v2, :cond_c

    if-eq v2, v6, :cond_b

    if-eq v2, v5, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyn deviceInfoName is not support, deviceInfoName : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object p1

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetTuringTicket(Landroid/content/Context;)V

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object p1

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetQIMEI36(Landroid/content/Context;Z)V

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object p1

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetQIMEI(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const-string v0, "GetDeviceInfo Catch Exception"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception Track: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private collectSynDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 10

    const-string v0, "DeviceInfoHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectSynDeviceInfo deviceInfoName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isEnableDeviceInfo()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "DeviceInfoHolder"

    const-string v3, "deviceInfoValueType get fail, disable"

    invoke-static {v0, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v3, 0x64

    if-nez v0, :cond_1

    const-string v0, "DeviceInfoHolder"

    const-string v1, "deviceInfoValueType get fail"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_1
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    if-ne v0, v4, :cond_2

    const-string v2, "DeviceInfoHolder"

    const-string v4, "deviceInfoValue type is String"

    invoke-static {v2, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Unknown"

    iget-object v4, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    const-class v4, Ljava/lang/Long;

    if-ne v0, v4, :cond_3

    const-string v2, "DeviceInfoHolder"

    const-string v4, "deviceInfoValue type is Long"

    invoke-static {v2, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    const-class v4, Ljava/lang/Boolean;

    if-ne v0, v4, :cond_e

    const-string v2, "DeviceInfoHolder"

    const-string v4, "deviceInfoValue type is Boolean"

    invoke-static {v2, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isDeviceInfoCollectEnable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v0, "DeviceInfoHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is disable collect"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_6

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "SysVersion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "CPUName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v8

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "ScreenWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "TotalSpace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "DeviceID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "Model"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v1, "Brand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto/16 :goto_2

    :sswitch_7
    const-string v1, "UUID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    goto :goto_2

    :sswitch_8
    const-string v1, "TotalMem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xd

    goto :goto_2

    :sswitch_9
    const-string v1, "AppVersion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v7

    goto :goto_2

    :sswitch_a
    const-string v1, "AndroidID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_2

    :sswitch_b
    const-string v6, "BundleId"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :sswitch_c
    const-string v1, "CpuFreq"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_d
    const-string v1, "CpuCore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_e
    const-string v1, "MacAddr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_f
    const-string v1, "ScreenHeight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v9

    :goto_2
    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    goto/16 :goto_3

    :pswitch_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetUUID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_1
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetTotalSpace()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetTotalMemory(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_3
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetSysVersion()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_4
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetScreenWidth(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_5
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetScreenHeight(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_6
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetModel()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_7
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetMacAddress(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_8
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetDeviceID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_9
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetCPUName()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_a
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetCPUMaxFreqKHz()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_b
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetCPUCores()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_c
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetBundleId(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_d
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetBrand()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_e
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetAppVersion(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :pswitch_f
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    move-result-object v1

    iget-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetAndroidID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v1

    goto :goto_4

    :goto_3
    invoke-direct {v1, p1, v2, v8}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_4
    if-eqz v1, :cond_a

    iput-object p1, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->name:Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    if-ne v0, v6, :cond_7

    iget-object v0, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget v0, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    if-eqz v0, :cond_6

    iget v0, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    if-ne v0, v9, :cond_7

    :cond_6
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isDeviceInfoNeedEncrypt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v0

    iget-object v6, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/tdatamaster/tdm/system/TDMUtils;->EncryptField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    iput v7, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    :cond_7
    iget v0, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    if-ne v0, v9, :cond_9

    iget-object v0, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    if-nez v0, :cond_8

    iput-object v2, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    iput v3, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    goto :goto_5

    :cond_8
    iput v5, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    goto :goto_5

    :cond_9
    iget-object v0, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    if-nez v0, :cond_b

    iput-object v2, v1, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    goto :goto_5

    :cond_a
    const-string v0, "DeviceInfoHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get deviceInfo is null, deviceInfoName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :goto_5
    move-object v0, v1

    goto :goto_6

    :catchall_0
    move-exception v0

    const-string v1, "DeviceInfoHolder"

    const-string v5, "GetDeviceInfo Catch Exception"

    invoke-static {v1, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DeviceInfoHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Track: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_6
    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isDeviceInfoDisableCache(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_7

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_c
    :goto_7
    if-nez v0, :cond_d

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_d
    return-object v0

    :cond_e
    const-string v0, "DeviceInfoHolder"

    const-string v1, "unsupported deviceInfoValue type"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6de06f2d -> :sswitch_f
        -0x6ba7f240 -> :sswitch_e
        -0x620ed6b9 -> :sswitch_d
        -0x620d6fe0 -> :sswitch_c
        -0x49507aa3 -> :sswitch_b
        -0x45198056 -> :sswitch_a
        -0x30b86069 -> :sswitch_9
        -0x2ece3fef -> :sswitch_8
        0x27ebbb -> :sswitch_7
        0x3d75b67 -> :sswitch_6
        0x4710b09 -> :sswitch_5
        0x45f74e11 -> :sswitch_4
        0x4c1b6c42 -> :sswitch_3
        0x6062889a -> :sswitch_2
        0x6597f033 -> :sswitch_1
        0x6a7d016b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAllDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 11
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

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isEnableDeviceInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DeviceInfoHolder"

    const-string v1, "deviceInfoValueType get fail, disable"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v1, "Unknown"

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    const/16 v0, 0x64

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-object v7, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "value"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-object v7, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "status"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget v4, v4, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "DeviceInfoHolder"

    const-string v6, "getStringDeviceInfo JSONException"

    invoke-static {v5, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DeviceInfoHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception track : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-object v7, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "value"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-object v7, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "status"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget v4, v4, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    const-string v5, "DeviceInfoHolder"

    const-string v6, "getStringDeviceInfo JSONException"

    invoke-static {v5, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DeviceInfoHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception track : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-object v7, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "value"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-object v7, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "status"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget v4, v4, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_7
    const-string v5, "DeviceInfoHolder"

    const-string v6, "getStringDeviceInfo JSONException"

    invoke-static {v5, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DeviceInfoHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception track : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/tdatamaster/tdm/device/DeviceInfo;->DISABLE_CACHED_DEVICE_INFO_NAMES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    invoke-direct {p0, v7}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->collectSynDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "name"

    iget-object v10, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "value"

    iget-object v10, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "status"

    iget v7, v7, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v7

    :try_start_9
    const-string v8, "DeviceInfoHolder"

    const-string v9, "getStringDeviceInfo JSONException"

    invoke-static {v8, v9}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "DeviceInfoHolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception track : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p1, v2, v5}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    monitor-exit v1

    return-object v3

    :cond_5
    const-string v2, "DeviceInfoHolder"

    const-string v3, "deviceInfosArr is empty"

    invoke-static {v2, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v3, "Unknown"

    invoke-direct {v2, p1, v3, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v1

    const-string v2, "DeviceInfoHolder"

    const-string v3, "getStringDeviceInfo Exception"

    invoke-static {v2, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DeviceInfoHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception track : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v2, "Unknown"

    invoke-direct {v1, p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method private getDeviceInfoStatus(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v0

    iget v1, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget p1, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v0

    iget v1, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    if-eq v1, v2, :cond_1

    iget p1, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getBoolDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    iget v0, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    if-eq v0, v2, :cond_2

    iget p1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return p1

    :cond_2
    return v2
.end method

.method private getDisableDeviceInfoNameList()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/tdatamaster/tdm/system/FileUtils;->GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;

    move-result-object v0

    const-string v1, "remote_disable_collect_device_info_name"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tdatamaster/tdm/system/FileUtils;->GetDefaultPreferenceByKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DeviceInfoHolder"

    const-string v3, "disable deviceInfoList use remote config"

    invoke-static {v2, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDisableDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "DeviceInfoHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisableDeviceInfoNameList catch exception, message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v0, "DeviceInfoHolder"

    const-string v2, "disable deviceInfoList use local config"

    invoke-static {v0, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    const-string v3, "GCloud.TDM.DisableDeviceInfo"

    invoke-virtual {v0, v2, v3}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDisableDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v2

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_4
    :goto_3
    return-void
.end method

.method private getEncryptDeviceInfoNameList()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/tdatamaster/tdm/system/FileUtils;->GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;

    move-result-object v0

    const-string v1, "remote_encrypt_collect_device_info_name"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tdatamaster/tdm/system/FileUtils;->GetDefaultPreferenceByKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DeviceInfoHolder"

    const-string v3, "encrypt deviceInfoList use remote config"

    invoke-static {v2, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mEncryptDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "DeviceInfoHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEncryptDeviceInfoNameList catch exception, message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v0, "DeviceInfoHolder"

    const-string v2, "encrypt deviceInfoList use local config"

    invoke-static {v0, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object v0

    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    const-string v3, "GCloud.TDM.EncryptDeviceInfo"

    invoke-virtual {v0, v2, v3}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mEncryptDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v2

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_4
    :goto_3
    return-void
.end method

.method private getInnerDeviceInfoStatus(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return p1

    :cond_0
    invoke-static {p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return p1

    :cond_1
    invoke-static {p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;->getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getBoolDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return p1

    :cond_2
    const-string p1, "DeviceInfoHolder"

    const-string v0, "device info type error"

    invoke-static {p1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method private isDeviceInfoDisableCache(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->DISABLE_CACHED_DEVICE_INFO_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private setDeviceInfoEncryptKey()V
    .locals 4

    invoke-static {}, Lcom/tdatamaster/tdm/system/FileUtils;->GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;

    move-result-object v0

    const-string v1, "remote_device_info_encrypt_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tdatamaster/tdm/system/FileUtils;->GetDefaultPreferenceByKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tdatamaster/tdm/system/FileUtils;->GetInstance()Lcom/tdatamaster/tdm/system/FileUtils;

    move-result-object v1

    const-string v3, "remote_device_info_encrypt_offset"

    invoke-virtual {v1, v3, v2}, Lcom/tdatamaster/tdm/system/FileUtils;->GetDefaultPreferenceByKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tdatamaster/tdm/system/TDMUtils;->SetDeviceInfoEncryptKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setDeviceInfoFromC(Ljava/lang/String;JI)V
    .locals 3

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v2, p1, p2, p4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p4}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const-string p1, "DeviceInfoHolder"

    const-string p2, "same key in map"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setDeviceInfoFromC(Ljava/lang/String;ZI)V
    .locals 3

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v2, p1, p2, p3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p3}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const-string p1, "DeviceInfoHolder"

    const-string p2, "same key in map"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DeviceInfoHolder"

    if-nez p1, :cond_0

    const-string p1, "context is null. initialize failed!"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mInitialized:Z

    if-nez v1, :cond_1

    const-string v1, "Initialize begin"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mInitialized:Z

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mContext:Landroid/content/Context;

    const-string p1, "Initialize end"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public native SetNewBoolDeviceInfo(Ljava/lang/String;ZI)V
.end method

.method public native SetNewLongDeviceInfo(Ljava/lang/String;JI)V
.end method

.method public native SetNewStringDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public addDeviceInfoObserver(Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x6

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "DeviceInfoHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddDeviceInfoObserver deviceInfoName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DeviceInfoHolder"

    const-string v1, "now syn info already collect complete"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "All"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AllSyn"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getInnerDeviceInfoStatus(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto/16 :goto_2

    :cond_2
    :goto_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "DeviceInfoHolder"

    const-string v1, "syn info observer insert success"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    invoke-virtual {v0, p2, p1}, Lcom/tdatamaster/tdm/device/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getInnerDeviceInfoStatus(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_6

    const/4 v0, 0x5

    if-ne v1, v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "DeviceInfoHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyn info already collcet complete, deviceInfoName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string v0, "DeviceInfoHolder"

    const-string v1, "asyn info observer insert success"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    invoke-virtual {v1, p2, p1}, Lcom/tdatamaster/tdm/device/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_7
    const-string v0, "DeviceInfoHolder"

    const-string v1, "asyn info observer insert success"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    invoke-virtual {v0, p2, p1}, Lcom/tdatamaster/tdm/device/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_8
    invoke-direct {p0, p2}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getDeviceInfoStatus(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_9

    const-string v0, "DeviceInfoHolder"

    const-string v1, "custom info observer insert success"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    invoke-virtual {v1, p2, p1}, Lcom/tdatamaster/tdm/device/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_2

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_9
    const-string v0, "DeviceInfoHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom info already collcet complete, deviceInfoName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    :goto_2
    return-void

    :cond_a
    :goto_3
    const-string p2, "DeviceInfoHolder"

    const-string v1, "deviceInfoName is empty"

    invoke-static {p2, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    return-void
.end method

.method public getBoolDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 6
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBoolDeviceInfo deviceInfoName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfoHolder"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isEnableDeviceInfo()Z

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v0, "deviceInfoValueType get fail, disable"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->collectAllDeviceInfoFromSystem(Landroid/content/Context;)V

    const/4 v0, 0x6

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    const-string v5, "TDM not start collect device info"

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isDeviceInfoDisableCache(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p1, "this deviceInfoName do not has collect method"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/16 v0, 0x64

    invoke-direct {p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mInitialized:Z

    if-nez v3, :cond_4

    invoke-static {v1, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_4
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyn deviceinfo is collecting, deviceInfoName : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceInfo not found, deviceInfoName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1

    :cond_6
    return-object v3

    :cond_7
    :goto_0
    const-string v3, "deviceInfoName is empty"

    invoke-static {v1, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method public declared-synchronized getDeviceInfoBoolMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceInfoLongMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceInfoStringMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLongDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 6
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLongDeviceInfo deviceInfoName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfoHolder"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isEnableDeviceInfo()Z

    move-result v0

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v0, "deviceInfoValueType get fail, disable"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->collectAllDeviceInfoFromSystem(Landroid/content/Context;)V

    const/4 v0, 0x6

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    const-string v5, "TDM not start collect device info"

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isDeviceInfoDisableCache(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p1, "this deviceInfoName do not has collect method"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/16 v0, 0x64

    invoke-direct {p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mInitialized:Z

    if-nez v3, :cond_4

    invoke-static {v1, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_4
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyn deviceinfo is collecting, deviceInfoName : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceInfo not found, deviceInfoName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1

    :cond_6
    return-object v3

    :cond_7
    :goto_0
    const-string v3, "deviceInfoName is empty"

    invoke-static {v1, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method public getStringDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 7
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringDeviceInfo deviceInfoName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfoHolder"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isEnableDeviceInfo()Z

    move-result v0

    const-string v2, "Unknown"

    if-nez v0, :cond_0

    const-string v0, "deviceInfoValueType get fail, disable"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->collectAllDeviceInfoFromSystem(Landroid/content/Context;)V

    const/4 v0, 0x6

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "DeviceID"

    const/4 v5, 0x4

    const-string v6, "TDM not start collect device info"

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynInfoCollectComplete()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v5}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_2
    const-string v3, "All"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "AllSyn"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isDeviceInfoDisableCache(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceInfoName [ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] disable cache"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "this deviceInfoName do not has collect method"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/16 v0, 0x64

    invoke-direct {p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_4
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->collectSynDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const-string v0, "get all deviceInfo"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getAllDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mInitialized:Z

    if-nez v3, :cond_7

    invoke-static {v1, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1, v2, v5}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_7
    iget-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v3, :cond_9

    invoke-virtual {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isAsynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyn deviceinfo is collecting, deviceInfoName : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceInfo not found, deviceInfoName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1

    :cond_9
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v3, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no permission, collect deviceInfoName : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->collectSynDeviceInfo(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v3

    :cond_b
    :goto_1
    const-string v3, "deviceInfoName is empty"

    invoke-static {v1, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, p1, v2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method public isAsynDeviceInfo(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mAsynDeviceInfoNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDeviceInfoCollectEnable(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDisableDeviceInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    return v1
.end method

.method public isDeviceInfoNeedEncrypt(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mEncryptDeviceInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public native isEnableDeviceInfo()Z
.end method

.method public isSynDeviceInfo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "AllSyn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "All"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynDeviceInfoNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isSynInfoCollectComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mSynInfoCollectComplete:Z

    return v0
.end method

.method public notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "DeviceInfoHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start NotifyAsynDeviceInfoCollectComplete deviceInfoName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    if-eqz v1, :cond_1

    const-string v1, "DeviceInfoHolder"

    const-string v2, "notify asyn device info"

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    invoke-virtual {v1, p1}, Lcom/tdatamaster/tdm/device/MultiValueMap;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;

    invoke-interface {v2, p2}, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    invoke-virtual {p2, p1}, Lcom/tdatamaster/tdm/device/MultiValueMap;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "DeviceInfoHolder"

    const-string p2, "no deviceInfo observer to notify"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifySynDeviceInfoCollectComplete()V
    .locals 7

    const-string v0, "DeviceInfoHolder"

    const-string v1, "NotifySynDeviceInfoCollectComplete"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DeviceInfoHolder"

    const-string v2, "notify syn device info"

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoObserverMap:Lcom/tdatamaster/tdm/device/MultiValueMap;

    invoke-virtual {v1}, Lcom/tdatamaster/tdm/device/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->isSynDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "All"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "AllSyn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->getInnerDeviceInfoStatus(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/tdatamaster/tdm/device/IDeviceInfoObserver;->onDeviceInfoNotify(I)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    const-string v0, "DeviceInfoHolder"

    const-string v1, "no deviceInfo observer to notify"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;J)I
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoLongMap:Ljava/util/HashMap;

    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, p1, v4, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->SetNewLongDeviceInfo(Ljava/lang/String;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0

    :cond_1
    const-string p1, "DeviceInfoHolder"

    const-string p2, "deviceInfoName has exist"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    return p1

    :cond_2
    :goto_1
    const-string p1, "DeviceInfoHolder"

    const-string p2, "deviceInfoName is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v3, p1, p2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->SetNewStringDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0

    :cond_1
    const-string p1, "DeviceInfoHolder"

    const-string p2, "deviceInfoName has exist"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    return p1

    :cond_2
    :goto_1
    const-string p1, "DeviceInfoHolder"

    const-string p2, "deviceInfoName or deviceInfoValue is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Z)I
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoBoolMap:Ljava/util/HashMap;

    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, p1, v4, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->SetNewBoolDeviceInfo(Ljava/lang/String;ZI)V

    invoke-virtual {p0, p1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0

    :cond_1
    const-string p1, "DeviceInfoHolder"

    const-string p2, "deviceInfoName has exist"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    return p1

    :cond_2
    :goto_1
    const-string p1, "DeviceInfoHolder"

    const-string p2, "deviceInfoName is empty"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1
.end method

.method public setDeviceInfoFromC(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->mDeviceInfoStringMap:Ljava/util/HashMap;

    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p3}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->notifyAsynDeviceInfoCollectComplete(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const-string p1, "DeviceInfoHolder"

    const-string p2, "same key in map"

    invoke-static {p1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
