.class public Lcom/tdatamaster/tdm/device/DeviceInfoCollect;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_CPU_INFO_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field private static final DefaultUUID:Ljava/lang/String; = "UUID"

.field private static instance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect; = null

.field private static final tag:Ljava/lang/String; = "DeviceInfoCollect"


# instance fields
.field private volatile mIsBeaconInit:Z

.field private volatile mQimeiObject:Ljava/lang/Object;

.field private m_DeviceID:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_MacAddress:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_UUID_MD5:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_szMemeryAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szSpaceAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_szSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z

    return-void
.end method

.method private GetMemoryInfo(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/16 v3, 0x14

    if-lt p1, v2, :cond_1

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    shr-long/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v2, 0x7

    invoke-direct {p1, v0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    :goto_0
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    shr-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szMemeryAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "DeviceInfoCollect"

    const-string v2, "GetMemoryInfo failed"

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szMemeryAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;

    :goto_1
    return-void
.end method

.method private GetScreenSize(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    float-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    float-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    float-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "DeviceInfoCollect"

    const-string v1, "get GetScreenSize failed"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception Track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    :goto_1
    return-void
.end method

.method private GetSpaceInfo()V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    new-instance v6, Lcom/tdatamaster/tdm/device/DeviceInfo;

    mul-long/2addr v4, v2

    const/16 v7, 0x14

    shr-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    new-instance v4, Lcom/tdatamaster/tdm/device/DeviceInfo;

    mul-long/2addr v2, v0

    shr-long v0, v2, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szSpaceAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DeviceInfoCollect"

    const-string v2, "getStorage failed"

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szSpaceAvail:Lcom/tdatamaster/tdm/device/DeviceInfo;

    :goto_1
    return-void
.end method

.method private static extractValue([BI)I
    .locals 4

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    add-int/lit8 v0, p1, 0x1

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    if-lt v3, v1, :cond_0

    if-gt v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getInstance()Lcom/tdatamaster/tdm/device/DeviceInfoCollect;
    .locals 1

    sget-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->instance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->instance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    :cond_0
    sget-object v0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->instance:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    return-object v0
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 8

    const-string v0, "Exception Track: "

    const-string v1, "DeviceInfoCollect"

    const/16 v2, 0x400

    new-array v2, v2, [B

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_5

    aget-byte v4, v2, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    if-nez v3, :cond_4

    :cond_0
    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    move v4, v3

    :goto_1
    if-ge v4, p1, :cond_4

    sub-int v5, v4, v3

    aget-byte v6, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    invoke-static {v2, v4}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->extractValue([BI)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "parseFileForValue NumberFormatException"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "parseFileForValue IOException"

    invoke-static {v1, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public GetAndroidID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "android_id"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetAppVersion(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%s(%d)"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "DeviceInfoCollect"

    const-string v1, "GetAppVersion Exception"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception Track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetBrand()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetBundleId(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetCPUCores()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "Exception Track: "

    const-string v1, "DeviceInfoCollect"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/16 v2, 0x64

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/system/cpu/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v0, v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v4

    const-string v5, "GetCPUCores NullPointerException"

    invoke-static {v1, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v3, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :catch_1
    move-exception v4

    const-string v5, "GetCPUCores SecurityException"

    invoke-static {v1, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v3, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public GetCPUMaxFreqKHz()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "Exception Track: "

    const-string v1, "DeviceInfoCollect"

    invoke-virtual {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetCPUCores()Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v4, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, -0x1

    move v7, v5

    move v8, v6

    :goto_0
    int-to-long v9, v7

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x80

    new-array v11, v9, [B

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v12, v11}, Ljava/io/FileInputStream;->read([B)I

    move v10, v5

    :goto_1
    aget-byte v13, v11, v10

    const/16 v14, 0x30

    if-lt v13, v14, :cond_1

    const/16 v14, 0x39

    if-gt v13, v14, :cond_1

    if-ge v10, v9, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v9, v11, v5, v10, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v8, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v9

    :try_start_3
    const-string v10, "fail to get cpuFreq by /sys/devices/,then use /proc/cpuinfo"

    invoke-static {v1, v10}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    throw v2

    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetCPUMaxFreqKHz temp maxFreq : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v8, v6, :cond_6

    new-instance v2, Ljava/io/FileInputStream;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    const-string v5, "cpu MHz"

    invoke-static {v5, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    mul-int/lit16 v5, v5, 0x3e8

    if-le v5, v8, :cond_5

    move v8, v5

    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    :catchall_1
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v5

    :cond_6
    :goto_5
    if-ne v8, v6, :cond_7

    new-instance v2, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v2, v4, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v2

    :cond_7
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    int-to-long v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catch_1
    move-exception v2

    const-string v5, "GetCPUMaxFreqKHz IOException"

    invoke-static {v1, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v4, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public GetCPUName()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Exception Track: "

    const-string v1, "/proc/cpuinfo"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "x86"

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "DeviceInfoCollect"

    const/16 v7, 0x15

    if-lt v2, v7, :cond_0

    :try_start_0
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "get SUPPORTED_ABIS failed"

    invoke-static {v6, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    :goto_0
    const/4 v7, 0x0

    if-eqz v2, :cond_1

    array-length v8, v2

    if-lez v8, :cond_1

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v2, "get CPU_ABI failed"

    invoke-static {v6, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    :cond_1
    :goto_2
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-direct {v3, v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v5

    :goto_3
    if-eqz v4, :cond_4

    :try_start_3
    const-string v3, "Hardware"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v8, 0x1

    const-string v9, ":"

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    goto :goto_4

    :cond_2
    const-string v3, "model name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v8

    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_5
    const-string v4, "GetCPUName, readLine Exception"

    invoke-static {v6, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v3, v5

    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v3, :cond_5

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catch_3
    move-exception v1

    const-string v2, "GetCPUName Exception"

    invoke-static {v6, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/16 v1, 0x64

    invoke-direct {v0, v5, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public GetDeviceID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_DeviceID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_DeviceID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-object v0, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_DeviceID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DeviceInfoCollect"

    if-eqz v0, :cond_1

    const-string p1, "getDeviceID, Permission Denied. "

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/4 v0, 0x2

    invoke-direct {p1, v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_1
    const/16 v0, 0x64

    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_2

    const-string p1, "telephonyManager is null"

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v3, p1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_DeviceID:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object v3

    :cond_4
    :goto_0
    const-string p1, "get deviceID is empty"

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v3, "get DeviceID failed"

    invoke-static {v2, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception Track: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetMacAddress(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v0, "NULL"

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public GetModel()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public GetQIMEI(Landroid/content/Context;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z

    const-string v1, "com.tdatamaster.qimei.TDMQimei"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v5, "getInstance"

    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_3

    :try_start_1
    invoke-virtual {v5, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    iget-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    if-nez v5, :cond_1

    return-void

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "TEST_MODE"

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tdatamaster/tdm/system/TDMUtils;->isTestMode()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "APP_ID"

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tdatamaster/tdm/system/TDMUtils;->getBeaconAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "APP_VERSION"

    const-string v7, "1.13.003.1375"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "QIMEI_ENABLE"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "init"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, v3

    invoke-virtual {v0, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {p2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    if-eqz p2, :cond_6

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    const-string v0, "com.tdatamaster.callback.TDMBridgeCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;

    invoke-direct {v1, p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;-><init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v3

    invoke-static {v2, v5, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    aput-object v0, v5, v4

    const-string v0, "getQimei"

    invoke-virtual {p2, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v1, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public GetQIMEI36(Landroid/content/Context;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z

    const-string v1, "com.tdatamaster.qimei.TDMQimei"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v5, "getInstance"

    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_3

    :try_start_1
    invoke-virtual {v5, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    iget-object v5, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    if-nez v5, :cond_1

    return-void

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "TEST_MODE"

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tdatamaster/tdm/system/TDMUtils;->isTestMode()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "APP_ID"

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tdatamaster/tdm/system/TDMUtils;->getBeaconAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "APP_VERSION"

    const-string v7, "1.13.003.1375"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "QIMEI_ENABLE"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "init"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v6, v3

    invoke-virtual {v0, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {p2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mIsBeaconInit:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    if-eqz p2, :cond_6

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    const-string v0, "com.tdatamaster.callback.TDMBridgeCallback"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;

    invoke-direct {v1, p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;-><init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v3

    invoke-static {v2, v5, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    aput-object v0, v5, v4

    const-string v0, "getQimei36"

    invoke-virtual {p2, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v1, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public GetScreenHeight(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetScreenSize(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenHeight:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1
.end method

.method public GetScreenWidth(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetScreenSize(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szScreenWidth:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1
.end method

.method public GetSysVersion()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    const-string v0, "DeviceInfoCollect"

    const-string v1, "get_sys_version failed"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public GetTotalMemory(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetMemoryInfo(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szMemoryTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1
.end method

.method public GetTotalSpace()Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetSpaceInfo()V

    :cond_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_szSpaceTotal:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object v0
.end method

.method public GetTuringTicket(Landroid/content/Context;)V
    .locals 9

    :try_start_0
    const-string v0, "com.tdatamaster.turing.TDMTuring"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "com.tdatamaster.callback.TDMBridgeCallback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;

    invoke-direct {v3, p0, v2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;-><init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getTurningTicket"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v6

    aput-object v1, v7, v4

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->mQimeiObject:Ljava/lang/Object;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public GetUUID(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tdatamaster/tdm/device/DeviceInfo<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_UUID_MD5:Lcom/tdatamaster/tdm/device/DeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_UUID_MD5:Lcom/tdatamaster/tdm/device/DeviceInfo;

    iget-object v0, v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_UUID_MD5:Lcom/tdatamaster/tdm/device/DeviceInfo;

    return-object p1

    :cond_0
    const-string v0, ""

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Exception Track: "

    const-string v3, "DeviceInfoCollect"

    if-eqz v1, :cond_1

    const-string v1, "getDeviceID, Permission Denied. "

    invoke-static {v3, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    const-string v1, "telephonyManager is null"

    invoke-static {v3, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "get DeviceID failed"

    invoke-static {v3, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v4, "get serial failed"

    invoke-static {v3, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "android_id"

    invoke-static {p1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    if-eqz v0, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    const-string v4, "UUID"

    if-nez v0, :cond_6

    const-string p1, "uuid is null"

    invoke-static {v3, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v4, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_6
    :try_start_2
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_7

    const-string p1, "digest is null, return default uuid"

    invoke-static {v3, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v4, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_7
    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_8

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->m_UUID_MD5:Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    const-string v0, "GetUUID Exception"

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {p1, v4, v1}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method
