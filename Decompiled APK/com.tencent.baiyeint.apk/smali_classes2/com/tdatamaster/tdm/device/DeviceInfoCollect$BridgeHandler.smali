.class Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tdatamaster/tdm/device/DeviceInfoCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BridgeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;


# direct methods
.method private constructor <init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)V
    .locals 0

    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;-><init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onResult"

    if-ne p2, v0, :cond_b

    array-length p2, p3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    const/4 p2, 0x0

    aget-object v0, p3, p2

    const-string v1, "TDMBridge"

    if-eqz v0, :cond_a

    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, p3, v2

    if-eqz v3, :cond_9

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "Error when "

    if-eqz v3, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", code:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const/4 v3, 0x2

    aget-object p3, p3, v3

    if-eqz p3, :cond_8

    instance-of v5, p3, Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    check-cast p3, Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, p2

    aput-object p3, v4, v2

    const-string v5, "Success %s , data = %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move p2, v1

    goto :goto_1

    :sswitch_0
    const-string p2, "TDMTuring_GetTuringTicket"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move p2, v3

    goto :goto_1

    :sswitch_1
    const-string p2, "TDMQimei_GetQimei"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    move p2, v2

    goto :goto_1

    :sswitch_2
    const-string v2, "TDMQimei_GetQimei36"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object p2

    const-string v0, "TuringTicket"

    invoke-virtual {p2, v0, p3}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_1
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object p2

    const-string v0, "QIMEI"

    invoke-virtual {p2, v0, p3}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_2
    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->GetInstance()Lcom/tdatamaster/tdm/device/DeviceInfoHolder;

    move-result-object p2

    const-string v0, "QIMEI36"

    invoke-virtual {p2, v0, p3}, Lcom/tdatamaster/tdm/device/DeviceInfoHolder;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", data is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-object p1

    :cond_a
    :goto_4
    const-string p2, "call back method is null"

    invoke-static {v1, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5aa325f7 -> :sswitch_2
        0x69a98526 -> :sswitch_1
        0x70146922 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
