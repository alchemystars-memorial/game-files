.class public Lcom/tdatamaster/tdm/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_UNKNOWN_BOOL_VALUE:Z = false

.field public static final DEFAULT_UNKNOWN_LONG_VALUE:J = -0x1L

.field public static final DEFAULT_UNKNOWN_STRING_VALUE:Ljava/lang/String; = "Unknown"

.field public static final DISABLE_CACHED_DEVICE_INFO_NAMES:[Ljava/lang/String;


# instance fields
.field public name:Ljava/lang/String;

.field public status:I

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/tdatamaster/tdm/device/DeviceInfo;->DISABLE_CACHED_DEVICE_INFO_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    iput p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    iput p3, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return-void
.end method

.method public static getValueTypeByDeviceInfoName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "AllSyn"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "SysVersion"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "CPUName"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "ScreenWidth"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "TotalSpace"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "DeviceID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "QIMEI36"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "QIMEI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "Model"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "Brand"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "UUID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "OAID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "IDFA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "xid"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "All"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "TotalMem"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "AppVersion"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_11
    const-string v2, "AndroidID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_12
    const-string v2, "BundleId"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_13
    const-string v2, "TuringTicket"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_14
    const-string v2, "CpuFreq"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_15
    const-string v2, "CpuCore"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_16
    const-string v2, "MacAddr"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_17
    const-string v2, "ScreenHeight"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-class p0, Ljava/lang/String;

    return-object p0

    :pswitch_1
    const-class p0, Ljava/lang/Long;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6de06f2d -> :sswitch_17
        -0x6ba7f240 -> :sswitch_16
        -0x620ed6b9 -> :sswitch_15
        -0x620d6fe0 -> :sswitch_14
        -0x53b9ad43 -> :sswitch_13
        -0x49507aa3 -> :sswitch_12
        -0x45198056 -> :sswitch_11
        -0x30b86069 -> :sswitch_10
        -0x2ece3fef -> :sswitch_f
        0x10181 -> :sswitch_e
        0x1cf93 -> :sswitch_d
        0x223716 -> :sswitch_c
        0x24e66d -> :sswitch_b
        0x27ebbb -> :sswitch_a
        0x3d75b67 -> :sswitch_9
        0x4710b09 -> :sswitch_8
        0x497c899 -> :sswitch_7
        0x3dc80cbc -> :sswitch_6
        0x45f74e11 -> :sswitch_5
        0x4c1b6c42 -> :sswitch_4
        0x6062889a -> :sswitch_3
        0x6597f033 -> :sswitch_2
        0x6a7d016b -> :sswitch_1
        0x750f4987 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
