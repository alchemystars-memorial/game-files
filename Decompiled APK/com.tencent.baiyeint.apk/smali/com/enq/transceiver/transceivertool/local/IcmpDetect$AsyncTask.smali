.class Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;
.super Ljava/lang/Object;
.source "IcmpDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/transceivertool/local/IcmpDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTask"
.end annotation


# instance fields
.field private _customCallback:Lcom/enq/transceiver/VmpCallback;

.field private _rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

.field private _resCode:I

.field private _uuid:Ljava/lang/String;

.field final synthetic this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;


# direct methods
.method constructor <init>(Lcom/enq/transceiver/transceivertool/local/IcmpDetect;Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    iput-object p2, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iput-object p3, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    return-void
.end method

.method private pingBySystem(Ljava/lang/String;[BIII)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ping6"

    goto :goto_0

    :cond_0
    const-string v1, "ping"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "-i"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-float p2, p4

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "-w"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/2addr p5, p3

    div-int/lit16 p5, p5, 0x3e8

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, ""

    const/4 p2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    const/4 p4, 0x0

    new-array p5, p4, [Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance p5, Ljava/io/InputStreamReader;

    invoke-virtual {p3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, p5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v1, ";"

    const-string v2, " "

    const/4 v3, 0x1

    const-string/jumbo v4, "ttl="

    const-string v5, "icmp_seq="

    const-string/jumbo v6, "time="

    if-eqz p5, :cond_2

    :try_start_3
    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, p5}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    aget-object p5, p5, v3

    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    aget-object p5, p5, p4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p5, Ljava/io/InputStreamReader;

    invoke-virtual {p3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance p2, Ljava/io/LineNumberReader;

    invoke-direct {p2, p5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_6
    invoke-virtual {p5}, Ljava/io/InputStreamReader;->close()V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Process;->destroy()V

    :cond_5
    invoke-virtual {p2}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_3

    :catch_1
    move-exception p4

    move-object v0, p2

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_3
    move-object p2, p5

    goto :goto_7

    :catch_2
    move-exception p4

    :goto_4
    move-object p2, p5

    goto :goto_5

    :catch_3
    move-exception p4

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v0, p2

    goto :goto_7

    :catch_4
    move-exception p4

    move-object v0, p2

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object p3, p2

    move-object v0, p3

    goto :goto_7

    :catch_5
    move-exception p4

    move-object p3, p2

    move-object v0, p3

    :goto_5
    :try_start_7
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p2, :cond_6

    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Process;->destroy()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_8
    :goto_6
    return-object p1

    :catchall_4
    move-exception p1

    :goto_7
    if-eqz p2, :cond_9

    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    goto :goto_8

    :catch_6
    move-exception p2

    goto :goto_9

    :cond_9
    :goto_8
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/Process;->destroy()V

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_a
    throw p1
.end method


# virtual methods
.method public run()V
    .locals 46

    move-object/from16 v7, p0

    const-string v0, "detect failed response:null"

    const-string v8, "executeResult"

    const-string v9, "executeTime"

    const-string v10, "executeCode"

    const-string v11, "invokeCode"

    const-string/jumbo v12, "taskUuid"

    const-string v13, "name"

    const-string/jumbo v14, "type"

    const-string v15, "data"

    const-string v6, "msg"

    const-string v5, "Exceptin:%s"

    const-string v4, "code"

    const-string v3, ""

    const-string v2, "localTaskApi"

    const-string v1, "cmd"

    move-object/from16 v16, v8

    const-string v8, "param"

    move-object/from16 v17, v9

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v18, v10

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v19, v11

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    move-object/from16 v23, v12

    :try_start_0
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v12, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget v12, v12, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->size:I

    new-array v12, v12, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v25, v1

    :try_start_1
    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget-object v1, v1, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v27

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget v1, v1, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->count:I

    move/from16 v28, v1

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget v1, v1, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->interval:I

    move/from16 v29, v1

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget v1, v1, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->timeout:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v30, v13

    move-object/from16 v13, v25

    move/from16 v25, v28

    move/from16 v28, v29

    move/from16 v29, v1

    move-object/from16 v1, p0

    move-object/from16 v31, v14

    move-object v14, v2

    move-object/from16 v2, v27

    move-object/from16 v32, v3

    move-object v3, v12

    move-object v12, v4

    move/from16 v4, v25

    move-object/from16 v33, v5

    move/from16 v5, v28

    move-object/from16 v25, v9

    move-object v9, v6

    move/from16 v6, v29

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->pingBySystem(Ljava/lang/String;[BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v1, :cond_1

    :try_start_3
    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v10, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v25

    invoke-virtual {v2, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v20

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v4, v31

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v5, v30

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v6, v23

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    move-object/from16 v3, v32

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    invoke-virtual {v0, v14, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v22

    move-object/from16 v3, v33

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v3, v32

    move-object/from16 v41, v16

    move-object/from16 v40, v18

    move-object/from16 v4, v19

    move-object/from16 v1, v23

    move-object/from16 v6, v30

    move-object/from16 v5, v31

    goto/16 :goto_6

    :cond_1
    move-object/from16 v37, v16

    move-object/from16 v38, v17

    move-object/from16 v36, v18

    move-object/from16 v35, v19

    move-object/from16 v6, v23

    move-object/from16 v2, v25

    move-object/from16 v5, v30

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    move-object/from16 v34, v33

    :try_start_5
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v23, v6

    :try_start_6
    array-length v6, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v16, 0x0

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v4, v22

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_6

    :try_start_7
    aget-object v25, v0, v5

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v28, v6

    const/4 v6, 0x1

    if-ge v0, v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-int/lit8 v4, v4, 0x1

    cmpl-float v6, v18, v0

    if-gtz v6, :cond_3

    cmpl-float v6, v18, v16

    if-nez v6, :cond_4

    :cond_3
    move/from16 v18, v0

    :cond_4
    cmpg-float v6, v19, v0

    if-gez v6, :cond_5

    move/from16 v19, v0

    :cond_5
    add-float v17, v17, v0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v27

    move/from16 v6, v28

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v6, v23

    move-object/from16 v5, v30

    move-object/from16 v4, v31

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v6, v30

    move-object/from16 v5, v31

    move-object/from16 v39, v34

    move-object/from16 v4, v35

    move-object/from16 v40, v36

    move-object/from16 v41, v37

    move-object/from16 v17, v38

    goto/16 :goto_9

    :cond_6
    if-eqz v4, :cond_7

    int-to-float v0, v4

    div-float v16, v17, v0

    :cond_7
    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget v0, v0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->count:I

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget v0, v0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->count:I

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x64

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget v5, v5, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->count:I

    div-int/2addr v0, v5

    goto :goto_3

    :cond_8
    move/from16 v0, v22

    :goto_3
    const-string v5, "ip"

    invoke-virtual/range {v26 .. v26}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "raw_info"

    invoke-virtual {v11, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "min_rtt"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "max_rtt"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "avg_rtt"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pkg_loss_rate"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "send_pkg"

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    iget v5, v5, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->count:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rece_pkg"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v4, "remote server response:%s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v22

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v20

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v5, v31

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v6, v30

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v5, v23

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v35

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v36

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v38

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v37

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    invoke-virtual {v0, v14, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_b

    :catch_3
    move-exception v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v22

    move-object/from16 v3, v34

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object v6, v5

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v6, v23

    :goto_4
    move-object/from16 v42, v34

    move-object/from16 v1, v35

    move-object/from16 v43, v36

    move-object/from16 v44, v37

    move-object/from16 v17, v38

    goto/16 :goto_f

    :catch_4
    move-exception v0

    move-object v6, v5

    move-object/from16 v1, v23

    move-object/from16 v39, v34

    move-object/from16 v40, v36

    move-object/from16 v41, v37

    move-object/from16 v17, v38

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v6

    move-object v6, v5

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v42, v34

    move-object/from16 v43, v36

    move-object/from16 v44, v37

    move-object/from16 v17, v38

    move-object v6, v1

    move-object/from16 v1, v35

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object v1, v6

    move-object/from16 v39, v34

    move-object/from16 v40, v36

    move-object/from16 v41, v37

    move-object/from16 v17, v38

    move-object v6, v5

    :goto_5
    move-object v5, v4

    move-object/from16 v4, v35

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v3, v32

    move-object/from16 v44, v16

    move-object/from16 v43, v18

    move-object/from16 v1, v19

    move-object/from16 v6, v23

    move-object/from16 v5, v30

    move-object/from16 v4, v31

    move-object/from16 v42, v33

    goto/16 :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v41, v16

    move-object/from16 v40, v18

    move-object/from16 v4, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v6, v30

    move-object/from16 v5, v31

    move-object/from16 v3, v32

    :goto_6
    move-object/from16 v39, v33

    goto/16 :goto_9

    :catchall_4
    move-exception v0

    move-object v12, v4

    move-object/from16 v39, v5

    move-object v5, v14

    move-object v14, v2

    move-object v2, v9

    move-object v9, v6

    move-object v6, v13

    move-object/from16 v13, v25

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v12, v4

    move-object/from16 v39, v5

    move-object v5, v14

    move-object/from16 v41, v16

    move-object/from16 v40, v18

    move-object/from16 v4, v19

    move-object/from16 v1, v23

    move-object v14, v2

    move-object v2, v9

    move-object v9, v6

    move-object v6, v13

    move-object/from16 v13, v25

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v12, v4

    move-object/from16 v39, v5

    move-object v5, v14

    move-object v14, v2

    move-object v2, v9

    move-object v9, v6

    move-object v6, v13

    move-object v13, v1

    :goto_7
    move-object v4, v5

    move-object v5, v6

    move-object/from16 v44, v16

    move-object/from16 v43, v18

    move-object/from16 v1, v19

    move-object/from16 v6, v23

    move-object/from16 v42, v39

    :goto_8
    move-object/from16 v16, v0

    move-object v0, v3

    goto/16 :goto_f

    :catch_8
    move-exception v0

    move-object v12, v4

    move-object/from16 v39, v5

    move-object v5, v14

    move-object/from16 v41, v16

    move-object/from16 v40, v18

    move-object/from16 v4, v19

    move-object v14, v2

    move-object v2, v9

    move-object v9, v6

    move-object v6, v13

    move-object v13, v1

    move-object/from16 v1, v23

    :goto_9
    :try_start_9
    sget-object v16, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    move-object/from16 v32, v3

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v3

    iput v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-object/from16 v19, v4

    :try_start_b
    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object/from16 v23, v1

    :try_start_c
    const-string v1, "Exceptin:%s\n"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v31, v5

    move-object/from16 v30, v6

    const/4 v6, 0x1

    :try_start_d
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v22

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    iget v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v20

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v4, v31

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v3, v3, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v5, v30

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v6, v23

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    move-object/from16 v3, v32

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v40

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v41

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    invoke-virtual {v0, v14, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v22

    move-object/from16 v3, v39

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-void

    :catchall_6
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v1, v19

    move-object/from16 v6, v23

    move-object/from16 v5, v30

    move-object/from16 v4, v31

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object/from16 v16, v3

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v1, v19

    move-object/from16 v6, v23

    :goto_c
    move-object/from16 v3, v32

    move-object/from16 v42, v39

    move-object/from16 v43, v40

    move-object/from16 v44, v41

    goto :goto_d

    :catchall_8
    move-exception v0

    move-object/from16 v16, v3

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v3, v32

    move-object/from16 v42, v39

    move-object/from16 v43, v40

    move-object/from16 v44, v41

    move-object v6, v1

    move-object/from16 v1, v19

    :goto_d
    move-object/from16 v45, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v45

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object/from16 v3, v32

    goto :goto_e

    :catchall_a
    move-exception v0

    :goto_e
    move-object/from16 v42, v39

    move-object/from16 v43, v40

    move-object/from16 v44, v41

    move-object/from16 v45, v6

    move-object v6, v1

    move-object v1, v4

    move-object v4, v5

    move-object/from16 v5, v45

    goto/16 :goto_8

    :goto_f
    move-object/from16 v19, v1

    :try_start_f
    iget v1, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    invoke-virtual {v10, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v20

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v9, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v9, v9, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v7, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;->_resCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v43

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v44

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    invoke-virtual {v0, v14, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v22

    move-object/from16 v3, v42

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    throw v16
.end method
