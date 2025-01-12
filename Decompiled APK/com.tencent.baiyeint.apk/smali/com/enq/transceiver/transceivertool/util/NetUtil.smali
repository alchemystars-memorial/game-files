.class public Lcom/enq/transceiver/transceivertool/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static final INET4:Ljava/lang/String; = "INET4"

.field private static final INET46:Ljava/lang/String; = "INET46"

.field private static final INET6:Ljava/lang/String; = "INET6"

.field private static final INETNONE:Ljava/lang/String; = "NONE"

.field private static final NETWORK_TYPE_NR:I = 0x14

.field private static final NETWORN_2G:Ljava/lang/String; = "2G"

.field private static final NETWORN_3G:Ljava/lang/String; = "3G"

.field private static final NETWORN_4G:Ljava/lang/String; = "4G"

.field private static final NETWORN_5G:Ljava/lang/String; = "5G"

.field private static final NETWORN_MOBILE:Ljava/lang/String; = "MOBILE"

.field private static final NETWORN_NONE:Ljava/lang/String; = "NONE"

.field private static final NETWORN_WIFI:Ljava/lang/String; = "WIFI"

.field private static brandList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/enq/transceiver/transceivertool/util/NetUtil$1;

    invoke-direct {v0}, Lcom/enq/transceiver/transceivertool/util/NetUtil$1;-><init>()V

    sput-object v0, Lcom/enq/transceiver/transceivertool/util/NetUtil;->brandList:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBytesFromString(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array p0, v1, [B

    :goto_1
    return-object p0

    :cond_2
    :goto_2
    new-array p0, v1, [B

    return-object p0
.end method

.method public static getIPByLocalDns(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getNetworkProtocol()Ljava/lang/String;
    .locals 7

    const-string v0, ":"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/net/InetSocketAddress;

    sget-object v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->PROBE_HOST_V4:Ljava/lang/String;

    sget v6, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->PROBE_UDP_PORT:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v4

    move-object v3, v1

    :goto_0
    :try_start_2
    sget-object v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    move v4, v2

    :goto_1
    :try_start_3
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v1, Ljava/net/InetSocketAddress;

    sget-object v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->PROBE_HOST_V6:Ljava/lang/String;

    sget v6, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->PROBE_UDP_PORT:I

    invoke-direct {v1, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iput-object v1, v0, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_2
    :try_start_5
    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_3
    :goto_3
    const/4 v0, 0x1

    if-eq v4, v0, :cond_6

    const/16 v0, 0xa

    if-eq v4, v0, :cond_5

    const/16 v0, 0xb

    if-eq v4, v0, :cond_4

    const-string v0, "NONE"

    return-object v0

    :cond_4
    const-string v0, "INET46"

    return-object v0

    :cond_5
    const-string v0, "INET6"

    return-object v0

    :cond_6
    const-string v0, "INET4"

    return-object v0

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_7
    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_8
    throw v0
.end method

.method public static getNetworkState(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "NONE"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_4

    :cond_3
    const-string p0, "WIFI"

    return-object p0

    :cond_4
    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->is5GConnected()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "5G"

    if-eqz v2, :cond_5

    return-object v3

    :cond_5
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_b

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v4, :cond_6

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_b

    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x14

    if-eq v1, v2, :cond_9

    const-string v2, "3G"

    packed-switch v1, :pswitch_data_0

    :try_start_2
    const-string v1, "TD-SCDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "WCDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CDMA2000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    const-string p0, "MOBILE"

    return-object p0

    :cond_8
    :goto_0
    return-object v2

    :pswitch_0
    const-string p0, "4G"

    return-object p0

    :pswitch_1
    return-object v2

    :pswitch_2
    const-string p0, "2G"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_9
    return-object v3

    :cond_a
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static is5GConnected()Z
    .locals 7

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v2, "context is null"

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_4

    :try_start_0
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/enq/transceiver/transceivertool/util/NetUtil;->brandList:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v4, "%s begin to special 5g check"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const-string v3, "huawei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "honor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-class v2, Landroid/telephony/ServiceState;

    const-string v3, "getHwNetworkType"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_3

    move v1, v5

    :cond_3
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public static sendTCPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "%d;%d"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    sget v6, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_SOCKTIME:I

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v8, p0

    invoke-direct {v6, v8, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v7

    if-nez v7, :cond_0

    sget v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_SOCKTIME:I

    invoke-virtual {v5, v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "*#9527#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x7

    if-le v4, v6, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->generateBytesFromString(Ljava/lang/String;)[B

    move-result-object v3

    :cond_1
    array-length v0, v3

    if-nez v0, :cond_2

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v4, "contentBytes generate error"

    invoke-static {v0, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    move/from16 v8, p2

    move-object v6, v0

    move-object v7, v6

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_3

    const/4 v10, 0x2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v11, v10, [Ljava/lang/Object;

    sub-long v12, v14, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    sub-long v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-static {v0, v1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v10, v13

    invoke-static {v11, v1, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "send/receive ERROR:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_5
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object v2

    :catch_2
    move-exception v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect ERROR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static sendUDPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_SOCKTIME:I

    invoke-static {p0, p1, p2, p3, v1}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendUDPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "0;%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static sendUDPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "send/receive ERROR:"

    const-string v1, "0"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v3, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 p1, 0x400

    new-array v4, p1, [B

    const-string v5, "*#9527#"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_0

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->generateBytesFromString(Ljava/lang/String;)[B

    move-result-object p0

    :cond_0
    array-length p3, p0

    if-nez p3, :cond_1

    sget-object p3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v5, "contentBytes generate error"

    invoke-static {p3, v5}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p3, Ljava/net/DatagramPacket;

    array-length v5, p0

    invoke-direct {p3, p0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    new-instance p0, Ljava/net/DatagramPacket;

    invoke-direct {p0, v4, p1}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_4

    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V

    const/16 v5, 0xa

    if-le p4, v5, :cond_2

    const/16 v5, 0xbb8

    if-ge p4, v5, :cond_2

    invoke-virtual {v4, p4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    goto :goto_1

    :cond_2
    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_SOCKTIME:I

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    :goto_1
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    :cond_3
    invoke-virtual {v4, p3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, p0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method
