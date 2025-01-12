.class Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;
.super Ljava/lang/Object;
.source "UdpDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/transceivertool/local/UdpDetect;
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

.field final synthetic this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;


# direct methods
.method constructor <init>(Lcom/enq/transceiver/transceivertool/local/UdpDetect;Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    iput-object p2, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iput-object p3, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 41

    move-object/from16 v1, p0

    const-string v2, "executeResult"

    const-string v3, "executeTime"

    const-string v4, "executeCode"

    const-string v5, "invokeCode"

    const-string/jumbo v6, "taskUuid"

    const-string v7, "name"

    const-string/jumbo v8, "type"

    const-string v9, "data"

    const-string v10, "msg"

    const-string v11, "code"

    const-string v12, "Exception:%s"

    const-string v13, ""

    const-string v14, "localTaskApi"

    const-string v15, "cmd"

    move-object/from16 v16, v12

    const-string v12, "param"

    move-object/from16 v17, v2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v18, v3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v19, v4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    move-object/from16 v23, v5

    :try_start_0
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v0

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget v0, v0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->port:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move-object/from16 v25, v13

    :try_start_1
    iget-object v13, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget v13, v13, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->count:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move-object/from16 v26, v6

    :try_start_2
    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget-object v6, v6, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->content:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-object/from16 v27, v7

    :try_start_3
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget v7, v7, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->timeout:I

    invoke-static {v5, v0, v13, v6, v7}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendUDPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-nez v0, :cond_1

    :try_start_4
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v5, "remote server response:null"

    invoke-static {v0, v5}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    const-string v5, "no response from remote svr"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v6, v27

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v5}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v7, v26

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v23

    move-object/from16 v5, v25

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v19

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v22

    move-object/from16 v4, v16

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v5, v25

    move-object v6, v5

    move-object v7, v8

    move-object/from16 v28, v16

    move-object/from16 v39, v17

    move-object/from16 v38, v18

    move-object/from16 v37, v19

    move-object/from16 v13, v26

    move-object/from16 v8, v27

    move-object/from16 v16, v0

    move-object v0, v6

    :goto_1
    move-object/from16 v5, v23

    goto/16 :goto_15

    :cond_1
    move-object/from16 v28, v16

    move-object/from16 v31, v17

    move-object/from16 v30, v18

    move-object/from16 v29, v19

    move-object/from16 v13, v23

    move-object/from16 v5, v25

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    :try_start_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    const/16 v17, 0x0

    move-object/from16 v23, v13

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v25, v19

    move/from16 v13, v22

    :goto_2
    :try_start_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eqz v26, :cond_7

    :try_start_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v27, v7

    :try_start_9
    move-object/from16 v7, v26

    check-cast v7, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v26, v6

    :try_start_a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v32, v8

    const/4 v8, 0x1

    if-lt v6, v8, :cond_6

    :try_start_b
    const-string v6, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    add-int/lit8 v13, v13, 0x1

    cmpl-float v7, v19, v6

    if-gtz v7, :cond_3

    cmpl-float v7, v19, v17

    if-nez v7, :cond_4

    :cond_3
    move/from16 v19, v6

    :cond_4
    cmpg-float v7, v25, v6

    if-gez v7, :cond_5

    move/from16 v25, v6

    :cond_5
    add-float v18, v18, v6

    :cond_6
    :goto_3
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v32

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    move-object v0, v5

    move-object v6, v0

    move-object v7, v8

    move-object/from16 v5, v23

    move-object/from16 v8, v26

    move-object/from16 v13, v27

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v25, v5

    move-object v7, v8

    move-object/from16 v6, v23

    move-object/from16 v8, v26

    move-object/from16 v13, v27

    move-object/from16 v5, v28

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move-object/from16 v36, v31

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v16, v0

    move-object v0, v5

    move-object v7, v8

    move-object/from16 v13, v27

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v25, v5

    move-object v7, v8

    move-object/from16 v13, v27

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v16, v0

    move-object v0, v5

    move-object v13, v7

    move-object v7, v8

    :goto_4
    move-object/from16 v37, v29

    move-object/from16 v38, v30

    move-object/from16 v39, v31

    move-object v8, v6

    move-object v6, v0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v32, v8

    if-eqz v13, :cond_8

    int-to-float v6, v13

    div-float v17, v18, v6

    :cond_8
    :try_start_c
    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget v6, v6, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->count:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v6, :cond_9

    :try_start_d
    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget v6, v6, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->count:I

    sub-int/2addr v6, v13

    mul-int/lit8 v6, v6, 0x64

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget v7, v7, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->count:I

    div-int/2addr v6, v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v16, v0

    move-object v0, v5

    move-object v6, v0

    move-object/from16 v5, v23

    goto/16 :goto_8

    :cond_9
    move/from16 v6, v22

    :goto_5
    :try_start_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v5

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v16, :cond_a

    :try_start_f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v18, v7

    const-string v7, "%s%s;"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object/from16 v33, v2

    const/4 v2, 0x2

    :try_start_10
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v22

    const/4 v8, 0x1

    aput-object v16, v2, v8

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object/from16 v7, v18

    move-object/from16 v2, v33

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v16, v0

    move-object v0, v5

    move-object v6, v0

    move-object/from16 v5, v23

    move-object/from16 v8, v26

    move-object/from16 v13, v27

    move-object/from16 v37, v29

    move-object/from16 v38, v30

    move-object/from16 v39, v31

    move-object/from16 v7, v32

    move-object/from16 v2, v33

    goto/16 :goto_15

    :cond_a
    move-object/from16 v33, v2

    :try_start_11
    const-string v2, "ip"

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "raw_info"

    invoke-virtual {v4, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "min_rtt"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "max_rtt"

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "avg_rtt"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pkg_loss_rate"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "send_pkg"

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    iget v6, v6, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->count:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rece_pkg"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v6, "remote server response:%s"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v22

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    iget v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    invoke-virtual {v3, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v33

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v6, v6, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v7, v32

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v6, v6, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v6, v6, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v8, v26

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v6}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v13, v27

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v23

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v29

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_12

    :catch_3
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v22

    move-object/from16 v4, v28

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_11

    :catchall_6
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v2, v33

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v6, v23

    move-object/from16 v8, v26

    move-object/from16 v13, v27

    move-object/from16 v5, v28

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move-object/from16 v36, v31

    move-object/from16 v7, v32

    move-object/from16 v2, v33

    goto/16 :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v25, v5

    :goto_7
    move-object/from16 v16, v0

    move-object/from16 v5, v23

    move-object/from16 v0, v25

    move-object v6, v0

    :goto_8
    move-object/from16 v8, v26

    move-object/from16 v13, v27

    move-object/from16 v37, v29

    move-object/from16 v38, v30

    move-object/from16 v39, v31

    move-object/from16 v7, v32

    goto/16 :goto_15

    :catch_5
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v6, v23

    move-object/from16 v8, v26

    move-object/from16 v13, v27

    move-object/from16 v5, v28

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move-object/from16 v36, v31

    move-object/from16 v7, v32

    goto/16 :goto_10

    :catchall_8
    move-exception v0

    move-object/from16 v25, v5

    move-object v13, v7

    move-object/from16 v16, v0

    move-object v7, v8

    move-object/from16 v5, v23

    move-object/from16 v0, v25

    move-object/from16 v37, v29

    move-object/from16 v38, v30

    move-object/from16 v39, v31

    move-object v8, v6

    move-object v6, v0

    goto/16 :goto_15

    :catch_6
    move-exception v0

    move-object/from16 v25, v5

    move-object v13, v7

    move-object v7, v8

    :goto_9
    move-object/from16 v5, v28

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move-object/from16 v36, v31

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_10

    :catchall_9
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v40, v8

    move-object v8, v6

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v40

    move-object/from16 v16, v0

    move-object v5, v6

    move-object/from16 v0, v25

    move-object v6, v0

    :goto_a
    move-object/from16 v37, v29

    move-object/from16 v38, v30

    move-object/from16 v39, v31

    goto/16 :goto_15

    :catch_7
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v5, v28

    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move-object/from16 v36, v31

    move-object/from16 v40, v8

    move-object v8, v6

    move-object v6, v13

    move-object v13, v7

    goto/16 :goto_f

    :catchall_a
    move-exception v0

    move-object v7, v8

    move-object/from16 v28, v16

    move-object/from16 v39, v17

    move-object/from16 v38, v18

    move-object/from16 v37, v19

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    move-object/from16 v13, v26

    move-object/from16 v8, v27

    goto/16 :goto_c

    :catch_8
    move-exception v0

    move-object v7, v8

    move-object/from16 v5, v16

    move-object/from16 v36, v17

    move-object/from16 v35, v18

    move-object/from16 v34, v19

    move-object/from16 v6, v23

    move-object/from16 v13, v26

    move-object/from16 v8, v27

    goto/16 :goto_10

    :catchall_b
    move-exception v0

    move-object/from16 v40, v8

    move-object v8, v7

    move-object/from16 v7, v40

    move-object/from16 v28, v16

    move-object/from16 v39, v17

    move-object/from16 v38, v18

    move-object/from16 v37, v19

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    move-object/from16 v13, v26

    goto :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v36, v17

    move-object/from16 v35, v18

    move-object/from16 v34, v19

    move-object/from16 v6, v23

    move-object/from16 v13, v26

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v13, v6

    move-object/from16 v5, v16

    move-object/from16 v36, v17

    move-object/from16 v35, v18

    move-object/from16 v34, v19

    goto :goto_d

    :catchall_d
    move-exception v0

    move-object/from16 v25, v13

    :goto_b
    move-object/from16 v40, v8

    move-object v8, v7

    move-object/from16 v7, v40

    move-object v13, v6

    move-object/from16 v28, v16

    move-object/from16 v39, v17

    move-object/from16 v38, v18

    move-object/from16 v37, v19

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    :goto_c
    move-object/from16 v16, v0

    move-object v0, v6

    goto/16 :goto_15

    :catch_b
    move-exception v0

    move-object/from16 v25, v13

    move-object/from16 v5, v16

    move-object/from16 v36, v17

    move-object/from16 v35, v18

    move-object/from16 v34, v19

    move-object v13, v6

    :goto_d
    move-object/from16 v6, v23

    :goto_e
    move-object/from16 v40, v8

    move-object v8, v7

    :goto_f
    move-object/from16 v7, v40

    :goto_10
    :try_start_13
    sget-object v16, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    move-object/from16 v23, v6

    :try_start_14
    invoke-virtual/range {v16 .. v16}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v6

    iput v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    move-object/from16 v26, v13

    :try_start_15
    sget-object v13, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    move-object/from16 v32, v7

    move-object/from16 v27, v8

    const/4 v8, 0x1

    :try_start_16
    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v22

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :try_start_17
    iget v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    invoke-virtual {v3, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v6, v6, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v7, v32

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v6, v6, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v6, v6, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v8, v27

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v6}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v13, v26

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v23

    move-object/from16 v6, v25

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v34

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v35

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v36

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v22

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_11
    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void

    :catchall_e
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v16, v6

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    move-object/from16 v13, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v32

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v16, v6

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    move-object/from16 v13, v26

    :goto_13
    move-object/from16 v37, v34

    move-object/from16 v38, v35

    move-object/from16 v39, v36

    move-object/from16 v40, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v40

    goto :goto_15

    :catchall_10
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v5, v23

    goto :goto_14

    :catchall_11
    move-exception v0

    move-object/from16 v28, v5

    move-object v5, v6

    :goto_14
    move-object/from16 v6, v25

    move-object/from16 v37, v34

    move-object/from16 v38, v35

    move-object/from16 v39, v36

    goto/16 :goto_c

    :goto_15
    move-object/from16 v23, v5

    :try_start_18
    iget v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    invoke-virtual {v3, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_customCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v5}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_uuid:Ljava/lang/String;

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v23

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v1, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;->_resCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v37

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v38

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v39

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    goto :goto_16

    :catch_d
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v22

    move-object/from16 v4, v28

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    throw v16
.end method
