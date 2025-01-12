.class public final Lg/c;
.super Lg/a;


# instance fields
.field public final a:I

.field public b:Lg/o;


# direct methods
.method public synthetic constructor <init>(Lg/o;I)V
    .locals 0

    iput p2, p0, Lg/c;->a:I

    invoke-direct {p0}, Lg/a;-><init>()V

    iput-object p1, p0, Lg/c;->b:Lg/o;

    return-void
.end method


# virtual methods
.method public final b(Li/l;Li/m;)V
    .locals 10

    iget v0, p0, Lg/c;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/c;->b:Lg/o;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lg/i;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Li/l;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Li/m;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lg/c;->b:Lg/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lg/c;->b:Lg/o;

    if-nez v0, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-virtual {p2}, Li/m;->a()Z

    move-result v0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lg/c;->b:Lg/o;

    iget-object v0, v0, Lg/o;->c:Lg/r;

    if-eqz v0, :cond_40

    if-eqz p1, :cond_40

    const/16 v0, 0xc8

    invoke-static {p1, v3, v0, v2, p2}, Lb/a;->k(Li/l;IILjava/lang/String;Li/m;)V

    goto/16 :goto_9

    :cond_8
    iget-object v0, p0, Lg/c;->b:Lg/o;

    iget-object v0, v0, Lg/o;->c:Lg/r;

    if-eqz v0, :cond_40

    if-eqz p1, :cond_40

    iget-object v0, p2, Li/m;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    iget-object v0, p2, Li/m;->c:Ljava/lang/Exception;

    sget-object v4, Lo/g;->a:Ljava/util/regex/Pattern;

    if-nez v0, :cond_a

    const/16 v0, -0xa

    goto/16 :goto_7

    :cond_a
    instance-of v4, v0, Ljava/io/CharConversionException;

    if-eqz v4, :cond_b

    const/16 v0, -0x14

    goto/16 :goto_7

    :cond_b
    instance-of v4, v0, Ljava/nio/charset/MalformedInputException;

    if-eqz v4, :cond_c

    const/16 v0, -0x15

    goto/16 :goto_7

    :cond_c
    instance-of v4, v0, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v4, :cond_d

    const/16 v0, -0x16

    goto/16 :goto_7

    :cond_d
    instance-of v4, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v4, :cond_e

    const/16 v0, -0x18

    goto/16 :goto_7

    :cond_e
    instance-of v4, v0, Ljava/io/EOFException;

    if-eqz v4, :cond_f

    const/16 v0, -0x1a

    goto/16 :goto_7

    :cond_f
    instance-of v4, v0, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz v4, :cond_10

    const/16 v0, -0x1b

    goto/16 :goto_7

    :cond_10
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_11

    const/16 v0, -0x1c

    goto/16 :goto_7

    :cond_11
    instance-of v4, v0, Ljava/net/HttpRetryException;

    if-eqz v4, :cond_12

    const/16 v0, -0x1d

    goto/16 :goto_7

    :cond_12
    instance-of v4, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v4, :cond_13

    const/4 v0, -0x7

    goto/16 :goto_7

    :cond_13
    instance-of v4, v0, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_14

    const/4 v0, -0x8

    goto/16 :goto_7

    :cond_14
    instance-of v4, v0, Ljava/util/InvalidPropertiesFormatException;

    if-eqz v4, :cond_15

    const/16 v0, -0x1e

    goto/16 :goto_7

    :cond_15
    instance-of v4, v0, Ljava/net/MalformedURLException;

    if-eqz v4, :cond_16

    const/4 v0, -0x3

    goto/16 :goto_7

    :cond_16
    instance-of v4, v0, Ljava/io/InvalidClassException;

    if-eqz v4, :cond_17

    const/16 v0, -0x21

    goto/16 :goto_7

    :cond_17
    instance-of v4, v0, Ljava/io/InvalidObjectException;

    if-eqz v4, :cond_18

    const/16 v0, -0x22

    goto/16 :goto_7

    :cond_18
    instance-of v4, v0, Ljava/io/NotActiveException;

    if-eqz v4, :cond_19

    const/16 v0, -0x23

    goto/16 :goto_7

    :cond_19
    instance-of v4, v0, Ljava/io/NotSerializableException;

    if-eqz v4, :cond_1a

    const/16 v0, -0x24

    goto/16 :goto_7

    :cond_1a
    instance-of v4, v0, Ljava/io/OptionalDataException;

    if-eqz v4, :cond_1b

    const/16 v0, -0x25

    goto/16 :goto_7

    :cond_1b
    instance-of v4, v0, Ljava/io/StreamCorruptedException;

    if-eqz v4, :cond_1c

    const/16 v0, -0x26

    goto/16 :goto_7

    :cond_1c
    instance-of v4, v0, Ljava/io/WriteAbortedException;

    if-eqz v4, :cond_1d

    const/16 v0, -0x27

    goto/16 :goto_7

    :cond_1d
    instance-of v4, v0, Ljava/net/ProtocolException;

    if-eqz v4, :cond_1e

    const/16 v0, -0x28

    goto/16 :goto_7

    :cond_1e
    instance-of v4, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_2d

    :goto_1
    if-eqz v0, :cond_2c

    const-string v4, "https exception"

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APTools"

    invoke-static {v5, v4}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTimeError https exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APBaseHttpReq"

    invoke-static {v5, v4}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v6, v0, Ljavax/security/cert/CertificateExpiredException;

    if-nez v6, :cond_24

    instance-of v6, v0, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v6, :cond_1f

    goto :goto_3

    :cond_1f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_2

    :cond_20
    const-string v6, "validation time"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "current time"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_3

    :cond_21
    const-string v6, "GMT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string v6, "compared to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_3

    :cond_22
    const-string v6, "Could not validate certificate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_23

    const-wide/32 v8, 0x56855100

    cmp-long v4, v8, v6

    if-lez v4, :cond_23

    goto :goto_3

    :cond_23
    :goto_2
    move v4, v3

    goto :goto_4

    :cond_24
    :goto_3
    move v4, v1

    :goto_4
    if-eqz v4, :cond_25

    const/16 v0, -0x37

    goto/16 :goto_7

    :cond_25
    const-string v4, "isWifiProxy https exception"

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lo/g;->e(Landroid/content/Context;)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_26

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Trust anchor for certification path not found"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v4, v1

    goto :goto_5

    :cond_26
    move v4, v3

    :goto_5
    if-eqz v4, :cond_27

    const/16 v0, -0x38

    goto/16 :goto_7

    :cond_27
    const-string v4, "isSSLV3Error https exception"

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SSL handshake aborted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "usually a protocol error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    :cond_28
    const-string v5, "GET_SERVER_HELLO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_29
    move v4, v1

    goto :goto_6

    :cond_2a
    move v4, v3

    :goto_6
    if-eqz v4, :cond_2b

    const/16 v0, -0x3a

    goto/16 :goto_7

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto/16 :goto_1

    :cond_2c
    const/16 v0, -0x29

    goto/16 :goto_7

    :cond_2d
    instance-of v1, v0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v1, :cond_2e

    const/16 v0, -0x2a

    goto/16 :goto_7

    :cond_2e
    instance-of v1, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_2f

    const/16 v0, -0x2b

    goto/16 :goto_7

    :cond_2f
    instance-of v1, v0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v1, :cond_30

    const/16 v0, -0x2c

    goto :goto_7

    :cond_30
    instance-of v1, v0, Ljava/net/BindException;

    if-eqz v1, :cond_31

    const/16 v0, -0x2d

    goto :goto_7

    :cond_31
    instance-of v1, v0, Ljava/net/ConnectException;

    if-eqz v1, :cond_32

    const/16 v0, -0x2e

    goto :goto_7

    :cond_32
    instance-of v1, v0, Ljava/net/NoRouteToHostException;

    if-eqz v1, :cond_33

    const/16 v0, -0x2f

    goto :goto_7

    :cond_33
    instance-of v1, v0, Ljava/net/PortUnreachableException;

    if-eqz v1, :cond_34

    const/16 v0, -0x30

    goto :goto_7

    :cond_34
    instance-of v1, v0, Ljava/io/SyncFailedException;

    if-eqz v1, :cond_35

    const/16 v0, -0x31

    goto :goto_7

    :cond_35
    instance-of v1, v0, Ljava/io/UTFDataFormatException;

    if-eqz v1, :cond_36

    const/16 v0, -0x32

    goto :goto_7

    :cond_36
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_37

    const/16 v0, -0x33

    goto :goto_7

    :cond_37
    instance-of v1, v0, Ljava/net/UnknownServiceException;

    if-eqz v1, :cond_38

    const/16 v0, -0x34

    goto :goto_7

    :cond_38
    instance-of v1, v0, Ljava/io/UnsupportedEncodingException;

    if-eqz v1, :cond_39

    const/16 v0, -0x35

    goto :goto_7

    :cond_39
    instance-of v1, v0, Ljava/util/zip/ZipException;

    if-eqz v1, :cond_3a

    const/16 v0, -0x36

    goto :goto_7

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    const-string v1, "Connection reset by peer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, -0x39

    goto :goto_7

    :cond_3b
    const/4 v0, -0x6

    :goto_7
    iget-object v1, p2, Li/m;->c:Ljava/lang/Exception;

    if-nez v1, :cond_3c

    iget v1, p2, Li/m;->a:I

    goto :goto_8

    :cond_3c
    instance-of v3, v1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v3, :cond_3d

    const/16 v1, 0x4e21

    goto :goto_8

    :cond_3d
    instance-of v3, v1, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_3e

    const/16 v1, 0x4e22

    goto :goto_8

    :cond_3e
    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_3f

    const/16 v1, 0x4e25

    goto :goto_8

    :cond_3f
    const/16 v1, 0x4e20

    :goto_8
    invoke-static {p1, v0, v1, v2, p2}, Lb/a;->k(Li/l;IILjava/lang/String;Li/m;)V

    :cond_40
    :goto_9
    return-void

    :cond_41
    if-nez p1, :cond_42

    goto :goto_a

    :cond_42
    iget-object v0, p0, Lg/c;->b:Lg/o;

    if-nez v0, :cond_43

    goto :goto_a

    :cond_43
    instance-of p1, p1, Lg/i;

    if-nez p1, :cond_44

    goto :goto_a

    :cond_44
    new-instance p1, Lg/j;

    iget-object v0, v0, Lg/o;->f:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lg/j;-><init>(Landroid/content/Context;Li/m;)V

    iput-object p1, p2, Li/m;->g:Ljava/lang/Object;

    :goto_a
    return-void
.end method

.method public final c(Li/l;)V
    .locals 9

    iget v0, p0, Lg/c;->a:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_9

    :cond_1
    instance-of v0, p1, Lg/i;

    if-nez v0, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v0, p0, Lg/c;->b:Lg/o;

    if-nez v0, :cond_3

    goto/16 :goto_9

    :cond_3
    check-cast p1, Lg/i;

    iget-object v0, p1, Lg/i;->p:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    goto/16 :goto_9

    :cond_5
    iget-object v0, p0, Lg/c;->b:Lg/o;

    const-string v2, ""

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, v0, Lg/o;->d:Lg/q;

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lg/i;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lg/i;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lg/c;->b:Lg/o;

    iget-object v4, v4, Lg/o;->b:Lh/a;

    invoke-virtual {v4, v0, v3}, Lh/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_1
    move-object v0, v2

    :cond_a
    new-instance v3, Lg/b;

    invoke-direct {v3}, Lg/b;-><init>()V

    iget-object v4, p0, Lg/c;->b:Lg/o;

    if-nez v4, :cond_b

    goto :goto_2

    :cond_b
    iget-object v4, v4, Lg/o;->g:Ljava/lang/String;

    const-string v5, "base"

    iput-object v5, v3, Lg/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lg/b;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lg/c;->b:Lg/o;

    iget-object v4, v4, Lg/o;->d:Lg/q;

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Lg/i;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_2

    :cond_d
    iget-object v5, p0, Lg/c;->b:Lg/o;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lg/i;->t()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_2

    :cond_e
    iget-object v6, p0, Lg/c;->b:Lg/o;

    iget-object v6, v6, Lg/o;->b:Lh/a;

    invoke-virtual {v6, v4, v5}, Lh/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "secret"

    iput-object v7, v3, Lg/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lg/b;->a(Ljava/lang/String;)V

    :cond_f
    iget-object v6, p0, Lg/c;->b:Lg/o;

    iget-object v6, v6, Lg/o;->b:Lh/a;

    invoke-virtual {v6, v4, v5}, Lh/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lg/c;->b:Lg/o;

    invoke-virtual {v5, p1}, Lg/o;->c(Li/l;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "crypt"

    iput-object v5, v3, Lg/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lg/b;->a(Ljava/lang/String;)V

    :cond_10
    :goto_2
    iget-object v4, v3, Lg/b;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_9

    :cond_11
    iget-object v4, p0, Lg/c;->b:Lg/o;

    iget-object v5, p1, Lg/i;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    goto/16 :goto_9

    :cond_12
    iget-object v5, v3, Lg/b;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto/16 :goto_9

    :cond_13
    iput-object v3, p1, Lg/i;->q:Lg/b;

    iget-object v5, p1, Lg/i;->p:Ljava/util/ArrayList;

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_14

    goto :goto_4

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lg/i;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/i$a;

    iget-object v7, v6, Lg/i$a;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v6, Lg/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v6, v6, Lg/i$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_17

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_18
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto/16 :goto_9

    :cond_19
    sget-object v5, Lj/b;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5}, Lj/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    sget-object v5, Lj/b;->d:Ljava/lang/String;

    invoke-static {v5}, Lj/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    sget-object v5, Lj/b;->e:Ljava/lang/String;

    invoke-static {v5}, Lj/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1a

    goto :goto_5

    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lj/b;->c:Ljava/lang/String;

    invoke-static {v5}, Lj/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lj/b;->d:Ljava/lang/String;

    invoke-static {v5}, Lj/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lj/b;->e:Ljava/lang/String;

    invoke-static {v5}, Lj/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_1b
    :goto_5
    iget-object v3, v3, Lg/b;->b:Ljava/lang/String;

    :goto_6
    iget-object v4, v4, Lg/o;->h:Ljava/lang/String;

    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v7, Lj/b;->b:Ljava/lang/String;

    invoke-static {v7}, Lj/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v3, Lj/b;->a:Ljava/lang/String;

    invoke-static {v3}, Lj/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1c

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v7, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v1, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "encryptAESTools"

    invoke-static {v3, v1}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_7
    if-eqz v6, :cond_1d

    invoke-static {v6}, Lb/a;->i([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_1d
    move-object v1, v2

    :goto_8
    const-string v3, "encrypt_msg"

    invoke-virtual {p1, v3, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_len"

    const-string v3, "newkey"

    invoke-virtual {p1, v1, v3}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_time"

    invoke-virtual {p1, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg_len"

    invoke-virtual {p1, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void
.end method
