.class public Lcom/enq/transceiver/transceivertool/report/ReportBase;
.super Ljava/lang/Object;
.source "ReportBase.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mIsTdmAvailable:Z

.field private static final ourInstance:Lcom/enq/transceiver/transceivertool/report/ReportBase;

.field private static sMethodReportDataToTDMBin:Ljava/lang/reflect/Method;

.field private static sMethodReportDataToTDMMap:Ljava/lang/reflect/Method;

.field private static sTDMInstance:Ljava/lang/Object;


# instance fields
.field private appid:Ljava/lang/String;

.field private executeScene:Ljava/lang/String;

.field private is_root:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private mobile_type:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private open_id:Ljava/lang/String;

.field private os_type:Ljava/lang/String;

.field private os_version:Ljava/lang/String;

.field private sdk_version:Ljava/lang/String;

.field private xid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->mIsTdmAvailable:Z

    new-instance v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;

    invoke-direct {v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;-><init>()V

    sput-object v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->ourInstance:Lcom/enq/transceiver/transceivertool/report/ReportBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkReportSdk()V
    .locals 8

    :try_start_0
    const-string v0, "com.tdatamaster.tdm.TDataMaster"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sTDMInstance:Ljava/lang/Object;

    const-string v1, "reportEvent"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/util/Map;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sMethodReportDataToTDMMap:Ljava/lang/reflect/Method;

    const-string v1, "reportBinary"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, [B

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sMethodReportDataToTDMBin:Ljava/lang/reflect/Method;

    const-string v1, "getTDMUID"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sTDMInstance:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tdmUid is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    sget-object v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "tdm is avaiable."

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lcom/enq/transceiver/transceivertool/report/ReportBase;->mIsTdmAvailable:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "tdm is not available."

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    const-string v1, "check tdm exception. "

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;
    .locals 1

    sget-object v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->ourInstance:Lcom/enq/transceiver/transceivertool/report/ReportBase;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 3

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/enq/transceiver/TransceiverManager;->appid:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->appid:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/enq/transceiver/TransceiverManager;->openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->open_id:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/enq/transceiver/TransceiverManager;->xid:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->xid:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->executeScene:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/DeviceInfoUtil;->isRunningOnEmulator()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->mobile_type:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->os_type:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->model:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->os_version:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->manufacturer:Ljava/lang/String;

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->VERSION:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sdk_version:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/DeviceInfoUtil;->isRooted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->is_root:Ljava/lang/String;

    sget-object v0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENQ transceivertool version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->checkReportSdk()V

    return-void
.end method

.method public report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "report_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sdk_version:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->appid:Ljava/lang/String;

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->manufacturer:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->model:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->mobile_type:Ljava/lang/String;

    const-string v2, "mobile_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->open_id:Ljava/lang/String;

    const-string v2, "open_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->xid:Ljava/lang/String;

    const-string/jumbo v2, "xid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->executeScene:Ljava/lang/String;

    const-string v2, "executeScene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->os_type:Ljava/lang/String;

    const-string v2, "os_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->os_version:Ljava/lang/String;

    const-string v2, "os_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/report/ReportBase;->is_root:Ljava/lang/String;

    const-string v2, "is_root"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    const-string v2, "netprottype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    const-string v2, "netaccesstype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object p2, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/enq/transceiver/transceivertool/report/ReportBase;->mIsTdmAvailable:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sTDMInstance:Ljava/lang/Object;

    if-eqz p2, :cond_0

    sget-object v1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sMethodReportDataToTDMMap:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->TDM_SRCID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ENQ_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ENQSDK"

    const-string p2, "[tdm]%s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    const-string p2, "ReportBase:report2Tdm: exception."

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "tdm reportEvent is not Available"

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public upload2Tdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo p3, "tdm-binary"

    invoke-virtual {p5, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-nez p3, :cond_1

    sget-boolean p3, Lcom/enq/transceiver/transceivertool/report/ReportBase;->mIsTdmAvailable:Z

    if-eqz p3, :cond_0

    sget-object p3, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sTDMInstance:Ljava/lang/Object;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sMethodReportDataToTDMBin:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->file2ByteArray(Ljava/lang/String;)[B

    move-result-object p3

    sget-object p5, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sMethodReportDataToTDMBin:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->sTDMInstance:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->TDM_SRCID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p4

    aput-object p2, v2, v0

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    invoke-virtual {p5, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "upload file by tdm, ok "

    invoke-static {p2, p3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    const-string/jumbo p1, "upload file by tdm, exception:%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_REPORTER_EXE_FAIL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_0
    sget-object p1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "upload file by tdm, reporter unavail "

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_REPORTER_UNAVAIL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_1
    sget-object p1, Lcom/enq/transceiver/transceivertool/report/ReportBase;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p5, p2, p4

    const-string/jumbo p3, "unsupport uploadmethod:%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_REPORTER_METHOD_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method
