.class public Lcom/intlgame/core/device_info/DeviceInfo;
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

.field public static final DEFAULT_UNKNOWN_STRING_VALUE:Ljava/lang/String; = ""

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
    .locals 15

    const-string v0, "battery_temp"

    const-string v1, "cpu_temp"

    const-string v2, "gpu_temp"

    const-string v3, "battery_power"

    const-string v4, "battery_power"

    const-string v5, "wifi_num"

    const-string v6, "wifi_rssi"

    const-string v7, "signal_level"

    const-string v8, "ram_avail"

    const-string v9, "rom_avail"

    const-string v10, "pss"

    const-string v11, "cpu_usage"

    const-string v12, "gpu_usage"

    const-string v13, "bytes_sent"

    const-string v14, "bytes_received"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/core/device_info/DeviceInfo;->DISABLE_CACHED_DEVICE_INFO_NAMES:[Ljava/lang/String;

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

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

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

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    iput p2, p0, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

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

    iput-object p1, p0, Lcom/intlgame/core/device_info/DeviceInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/intlgame/core/device_info/DeviceInfo;->value:Ljava/lang/Object;

    iput p3, p0, Lcom/intlgame/core/device_info/DeviceInfo;->status:I

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
    const-string v2, "gl_version"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "AllSyn"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "lang_type"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "wifi_rssi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "bytes_sent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "screen_height"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "rom_total"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "rom_avail"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "os_version"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "client_region"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "cpu_temp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "cpu_name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "cpu_freq"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "cpu_core"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "pss"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "All"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "bytes_received"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "gpu_usage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "gl_vendor"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "gl_renderer"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "device_model"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "device_brand"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "signal_level"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "root_info"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "battery_power"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "app_version"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "android_adid"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "gpu_temp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "gpu_name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "battery_status"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "screen_width"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1f
    const-string v2, "wifi_num"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_20
    const-string v2, "bundle_id"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_21
    const-string v2, "lang_type_info"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_22
    const-string v2, "cpu_usage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_23
    const-string v2, "battery_temp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_24
    const-string v2, "ram_total"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_0

    :cond_25
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_25
    const-string v2, "ram_avail"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
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
        -0x6f82ee72 -> :sswitch_25
        -0x6e7a181d -> :sswitch_24
        -0x64c4f13a -> :sswitch_23
        -0x61097bb6 -> :sswitch_22
        -0x5a3f827e -> :sswitch_21
        -0x5830a608 -> :sswitch_20
        -0x4fe308a4 -> :sswitch_1f
        -0x4f6eafcd -> :sswitch_1e
        -0x4834599c -> :sswitch_1d
        -0x4297d1c2 -> :sswitch_1c
        -0x42950879 -> :sswitch_1b
        -0x3b2433b2 -> :sswitch_1a
        -0x35c17346 -> :sswitch_19
        -0x340ce3ad -> :sswitch_18
        -0x33b22615 -> :sswitch_17
        -0x24c030d3 -> :sswitch_16
        -0x23d4cba2 -> :sswitch_15
        -0x233b1c00 -> :sswitch_14
        -0x2119e923 -> :sswitch_13
        -0x14e9c61e -> :sswitch_12
        -0xff7bfb2 -> :sswitch_11
        -0x425ccb -> :sswitch_10
        0x10181 -> :sswitch_f
        0x1b2d0 -> :sswitch_e
        0x1ddeafd6 -> :sswitch_d
        0x1de016af -> :sswitch_c
        0x1de37ac2 -> :sswitch_b
        0x1de6440b -> :sswitch_a
        0x1f8c65e8 -> :sswitch_9
        0x281aad7d -> :sswitch_8
        0x3ecd85c0 -> :sswitch_7
        0x3fd65c15 -> :sswitch_6
        0x47c9bc5a -> :sswitch_5
        0x530152ec -> :sswitch_4
        0x5383bf41 -> :sswitch_3
        0x5952baeb -> :sswitch_2
        0x750f4987 -> :sswitch_1
        0x77f01b7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
