.class public final Lg/j;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li/m;)V
    .locals 11

    const-string v0, "phone"

    const-string v1, "MOBILE"

    const-string v2, "connectivity"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lg/j;->a:I

    const-string v3, "default_resultMsg"

    iput-object v3, p0, Lg/j;->b:Ljava/lang/String;

    invoke-virtual {p2}, Li/m;->a()Z

    move-result v3

    const-string v4, "The system is busy, please try again later"

    if-eqz v3, :cond_2

    iget-object p1, p2, Li/m;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Li/m;->b:Ljava/lang/String;

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Li/m;->b:Ljava/lang/String;

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Li/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Li/m;->b:Ljava/lang/String;

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p2, Li/m;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p2, "ret"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, -0x66

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lg/j;->a:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "msg"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_10

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0x67

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0x65

    :goto_0
    iput p1, p0, Lg/j;->a:I

    iput-object v4, p0, Lg/j;->b:Ljava/lang/String;

    goto/16 :goto_11

    :cond_2
    iget-object v3, p2, Li/m;->c:Ljava/lang/Exception;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    if-eqz v7, :cond_1e

    if-nez p1, :cond_4

    const-string p1, "CTIHttpResponse"

    const-string p2, "http-core, context null!"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    instance-of v7, v3, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v7, :cond_5

    const-string v3, "Network connection timed out, please check the network"

    iput-object v3, p0, Lg/j;->b:Ljava/lang/String;

    const/16 v3, 0x4e21

    goto :goto_2

    :cond_5
    instance-of v7, v3, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_6

    const-string v3, "The network response timed out, please check the network"

    iput-object v3, p0, Lg/j;->b:Ljava/lang/String;

    const/16 v3, 0x4e22

    goto :goto_2

    :cond_6
    instance-of v3, v3, Ljava/io/IOException;

    if-eqz v3, :cond_7

    const-string v3, "The network connection is abnormal, please check the network"

    iput-object v3, p0, Lg/j;->b:Ljava/lang/String;

    const/16 v3, 0x4e25

    goto :goto_2

    :cond_7
    const-string v3, "Network error, please try again later"

    iput-object v3, p0, Lg/j;->b:Ljava/lang/String;

    const/16 v3, 0x4e20

    :goto_2
    iput v3, p0, Lg/j;->a:I

    iget-object v3, p2, Li/m;->d:Li/l;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Li/l;->j()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v6

    goto :goto_3

    :cond_8
    move v3, v5

    :goto_3
    if-eqz v3, :cond_21

    iget-object p2, p2, Li/m;->c:Ljava/lang/Exception;

    :goto_4
    if-eqz p2, :cond_21

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    instance-of v7, p2, Ljavax/security/cert/CertificateExpiredException;

    if-nez v7, :cond_e

    instance-of v7, p2, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    const-string v7, "validation time"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "current time"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_b
    const-string v7, "GMT"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "compared to"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    const-string v7, "Could not validate certificate"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_d

    const-wide/32 v9, 0x56855100

    cmp-long v3, v9, v7

    if-lez v3, :cond_d

    goto :goto_6

    :cond_d
    :goto_5
    move v3, v5

    goto :goto_7

    :cond_e
    :goto_6
    move v3, v6

    :goto_7
    if-eqz v3, :cond_f

    const/16 v3, 0x4e84

    iput v3, p0, Lg/j;->a:I

    const-string v7, "Your device system time is incorrect, please change it"

    invoke-static {v7}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lg/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lg/j;->b:Ljava/lang/String;

    :cond_f
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x3e8

    const/4 v8, 0x3

    :try_start_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v9, :cond_10

    move v9, v6

    goto :goto_8

    :catch_2
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_10
    move v9, v5

    :goto_8
    if-eqz v9, :cond_1a

    :try_start_4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "WIFI"

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v9, :cond_11

    move v9, v6

    goto :goto_9

    :catch_3
    move-exception v9

    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_11
    move v9, v5

    :goto_9
    if-eqz v9, :cond_12

    move v8, v7

    goto/16 :goto_e

    :cond_12
    :try_start_6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const/16 v10, 0xd

    if-eq v9, v10, :cond_13

    goto :goto_a

    :cond_13
    move v9, v6

    goto :goto_b

    :catch_4
    move-exception v9

    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_14
    :goto_a
    move v9, v5

    :goto_b
    if-eqz v9, :cond_15

    const/4 v8, 0x4

    goto :goto_e

    :cond_15
    :try_start_8
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eq v9, v8, :cond_16

    const/4 v10, 0x6

    if-eq v9, v10, :cond_16

    packed-switch v9, :pswitch_data_0

    goto :goto_c

    :cond_16
    :pswitch_0
    move v9, v6

    goto :goto_d

    :catch_5
    move-exception v9

    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_c
    move v9, v5

    :goto_d
    if-eqz v9, :cond_18

    goto :goto_e

    :cond_18
    invoke-static {p1}, Lb/a;->h(Landroid/content/Context;)Z

    move-result v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v8, :cond_19

    move v8, v6

    goto :goto_e

    :cond_19
    const/4 v8, 0x2

    goto :goto_e

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    move v8, v5

    :goto_e
    if-ne v8, v7, :cond_1b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Trust anchor for certification path not found"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v6

    goto :goto_f

    :cond_1b
    move v3, v5

    :goto_f
    if-eqz v3, :cond_1c

    const/16 v3, 0x4e86

    iput v3, p0, Lg/j;->a:I

    const-string v7, "Your wifi has a proxy set up, please change it"

    invoke-static {v7}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lg/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lg/j;->b:Ljava/lang/String;

    :cond_1c
    instance-of v3, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v3, :cond_1d

    instance-of v3, p2, Ljava/net/SocketTimeoutException;

    if-nez v3, :cond_1d

    instance-of v3, p2, Ljava/net/UnknownHostException;

    if-nez v3, :cond_1d

    const/16 v3, 0x4e85

    iput v3, p0, Lg/j;->a:I

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lg/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lg/j;->b:Ljava/lang/String;

    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto/16 :goto_4

    :cond_1e
    iget p1, p2, Li/m;->a:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1f

    move v5, v6

    :cond_1f
    if-nez v5, :cond_20

    const-string p1, "Network error (error code"

    invoke-static {p1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Li/m;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_20
    iget-object p1, p2, Li/m;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v6

    if-nez p1, :cond_21

    const-string p1, "Network connection returns empty results, please try again later"

    :goto_10
    iput-object p1, p0, Lg/j;->b:Ljava/lang/String;

    :cond_21
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;)Li/m;
    .locals 3

    new-instance v0, Li/m;

    invoke-direct {v0}, Li/m;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Li/m;->c:Ljava/lang/Exception;

    const/16 v1, 0x64

    iput v1, v0, Li/m;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"ret\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\", \"msg\":\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Li/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(100-100-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
