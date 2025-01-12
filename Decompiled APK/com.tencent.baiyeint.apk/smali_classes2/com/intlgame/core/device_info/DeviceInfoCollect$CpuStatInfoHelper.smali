.class Lcom/intlgame/core/device_info/DeviceInfoCollect$CpuStatInfoHelper;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/core/device_info/DeviceInfoCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CpuStatInfoHelper"
.end annotation


# static fields
.field private static final CPU_STAT_ITEM_SPLITTER:Ljava/lang/String; = " "


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCpuStatItem(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static buildRawCpuStatItems(Ljava/lang/String;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-le p1, v0, :cond_1

    return-object p2

    :cond_1
    return-object p0
.end method
