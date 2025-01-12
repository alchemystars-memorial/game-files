.class public Lcom/gcore/abase/NetworkStateChecker;
.super Ljava/lang/Object;
.source "NetworkStateChecker.java"


# static fields
.field private static final tag:Ljava/lang/String; = "NetworkStateChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CheckNetworkState(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/NetworkState;->ordinal()I

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    sget-object p1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaOthers:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaWiFi:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaWWAN:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check Get exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkStateChecker"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    :goto_1
    return p1
.end method

.method public GetBSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, "None"

    return-object p1
.end method

.method public GetCurrentAPN(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "getExtraInfo is null"

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    if-nez v1, :cond_10

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "Error"

    invoke-static {p1, v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cmwap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "CMWAP"

    return-object p1

    :cond_5
    const-string v0, "cmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "epc.tmobile.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "uniwap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "UNIWAP"

    return-object p1

    :cond_7
    const-string/jumbo v0, "uninet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "UNINET"

    return-object p1

    :cond_8
    const-string/jumbo v0, "wap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "WAP"

    return-object p1

    :cond_9
    const-string v0, "net"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "NET"

    return-object p1

    :cond_a
    const-string v0, "ctwap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "CTWAP"

    return-object p1

    :cond_b
    const-string v0, "ctnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "CTNET"

    return-object p1

    :cond_c
    const-string v0, "3gwap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "3GWAP"

    return-object p1

    :cond_d
    const-string v0, "3gnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "3GNET"

    return-object p1

    :cond_e
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_0
    const-string p1, "CMNET"

    return-object p1

    :cond_10
    :goto_1
    return-object v0
.end method

.method public GetCurrentCarrier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "46000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "46002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "46007"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "46001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "46006"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "46005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "46004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/gcore/abase/Carrier;->ChinaSpacecom:Lcom/gcore/abase/Carrier;

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/gcore/abase/Carrier;->Unknown:Lcom/gcore/abase/Carrier;

    goto :goto_3

    :cond_4
    :goto_0
    sget-object p1, Lcom/gcore/abase/Carrier;->ChinaTelecom:Lcom/gcore/abase/Carrier;

    goto :goto_3

    :cond_5
    :goto_1
    sget-object p1, Lcom/gcore/abase/Carrier;->ChinaUnicom:Lcom/gcore/abase/Carrier;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p1, Lcom/gcore/abase/Carrier;->ChinaMobile:Lcom/gcore/abase/Carrier;

    :goto_3
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p2, Lcom/gcore/abase/Carrier;->None:Lcom/gcore/abase/Carrier;

    goto :goto_7

    :cond_7
    const-string v0, "CMWAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CMNET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const-string v0, "UNIWAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "UNINET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "3GWAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "3GNET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const-string v0, "CTWAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CTNET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_4

    :cond_a
    sget-object p2, Lcom/gcore/abase/Carrier;->Unknown:Lcom/gcore/abase/Carrier;

    goto :goto_7

    :cond_b
    :goto_4
    sget-object p2, Lcom/gcore/abase/Carrier;->ChinaTelecom:Lcom/gcore/abase/Carrier;

    goto :goto_7

    :cond_c
    :goto_5
    sget-object p2, Lcom/gcore/abase/Carrier;->ChinaUnicom:Lcom/gcore/abase/Carrier;

    goto :goto_7

    :cond_d
    :goto_6
    sget-object p2, Lcom/gcore/abase/Carrier;->ChinaMobile:Lcom/gcore/abase/Carrier;

    :goto_7
    sget-object v0, Lcom/gcore/abase/Carrier;->None:Lcom/gcore/abase/Carrier;

    invoke-virtual {p2, v0}, Lcom/gcore/abase/Carrier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/gcore/abase/Carrier;->Unknown:Lcom/gcore/abase/Carrier;

    invoke-virtual {p2, v0}, Lcom/gcore/abase/Carrier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2, p1}, Lcom/gcore/abase/Carrier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Lcom/gcore/abase/Carrier;->ordinal()I

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p1}, Lcom/gcore/abase/Carrier;->ordinal()I

    move-result p1

    return p1
.end method

.method public GetCurrentCarrierCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public GetDetailNetworkState(Landroid/content/Context;)I
    .locals 3

    const-string v0, "NetworkStateChecker"

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const-string p1, "NetworkStateChecker connManager is null"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "GetDetailNetworkState has not ACCESS_NETWORK_STATE permission"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWiFi:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_UNKNOWN:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :pswitch_0
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_4G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :pswitch_1
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_3G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :pswitch_2
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_2G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :cond_4
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_5G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :cond_5
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaOthers:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    :cond_6
    :goto_0
    const-string p1, "NetworkStateChecker ApolloNetInfo is null"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check Get exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

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

.method public GetSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, "None"

    return-object p1
.end method
