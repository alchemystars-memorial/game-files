.class Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/core/device_info/DeviceInfoCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TotalCpuStatInfo"
.end annotation


# static fields
.field private static final INVALID_RAW_CPU_STAT_ITEMS:[Ljava/lang/String;

.field private static final MIN_CPU_STAT_ITEM_NUM:I = 0x9


# instance fields
.field public final idle:J

.field public final iowait:J

.field public final irq:J

.field public final nice:J

.field public final softirq:J

.field public final system:J

.field public final user:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->INVALID_RAW_CPU_STAT_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->INVALID_RAW_CPU_STAT_ITEMS:[Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildRawCpuStatItems(Ljava/lang/String;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->user:J

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->nice:J

    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->system:J

    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->idle:J

    const/4 v0, 0x6

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->iowait:J

    const/4 v0, 0x7

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->irq:J

    const/16 v0, 0x8

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;->buildCpuStatItem(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->softirq:J

    return-void
.end method

.method public static get()Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/stat"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v2

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_1
    move-object v1, v0

    :catch_2
    :try_start_3
    const-string v2, "get total cpu stat info failed"

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    new-instance v2, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;

    invoke-direct {v2, v0}, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;-><init>(Ljava/lang/String;)V
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

    :goto_0
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

    iget-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->user:J

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->nice:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->system:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->iowait:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->irq:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->softirq:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal()J
    .locals 4

    iget-wide v0, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->user:J

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->nice:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->system:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->idle:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->iowait:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->irq:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/intlgame/core/device_info/DeviceInfoCollect$TotalCpuStatInfo;->softirq:J

    add-long/2addr v0, v2

    return-wide v0
.end method
