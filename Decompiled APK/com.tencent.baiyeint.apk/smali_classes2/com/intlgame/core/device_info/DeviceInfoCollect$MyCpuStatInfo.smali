.class Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/core/device_info/DeviceInfoCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyCpuStatInfo"
.end annotation


# static fields
.field private static final INVALID_RAW_CPU_STAT_ITEMS:[Ljava/lang/String;

.field private static final MIN_CPU_STAT_ITEM_NUM:I = 0x11


# instance fields
.field public final cstime:J

.field public final cutime:J

.field public final stime:J

.field public final utime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->INVALID_RAW_CPU_STAT_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->INVALID_RAW_CPU_STAT_ITEMS:[Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {p1, v1, v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildRawCpuStatItems(Ljava/lang/String;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xd

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->utime:J

    const/16 v0, 0xe

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->stime:J

    const/16 v0, 0xf

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->cutime:J

    const/16 v0, 0x10

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->cstime:J

    return-void
.end method

.method public static get()Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/self/stat"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v2

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get my cpu stat info failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v2, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;

    invoke-direct {v2, v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    return-object v2

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_1
    throw v0
.end method


# virtual methods
.method public getCpuTotal()J
    .locals 4

    iget-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->utime:J

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->stime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->cutime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->cstime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentThreadCpuTotal()J
    .locals 4

    iget-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->utime:J

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$MyCpuStatInfo;->stime:J

    add-long/2addr v0, v2

    return-wide v0
.end method
