.class Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;
.super Ljava/lang/Object;
.source "CustomPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enq/transceiver/transceivertool/local/CustomPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTask"
.end annotation


# instance fields
.field private _customPipeCallback:Lcom/enq/transceiver/VmpCallback;

.field private _rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

.field private _urlPath:Ljava/lang/String;

.field private _uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_urlPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iput-object p3, p0, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_uuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_customPipeCallback:Lcom/enq/transceiver/VmpCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 40

    move-object/from16 v1, p0

    const-string v0, "generate requestData failed"

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

    sget-object v19, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v19}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const/16 v19, 0x0

    move/from16 v23, v4

    :try_start_0
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    new-instance v4, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-object/from16 v25, v5

    :try_start_1
    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->generatePostParam()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-nez v4, :cond_1

    :try_start_2
    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_customPipeCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v5}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_uuid:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v25

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v20

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v18

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v19

    move-object/from16 v4, v16

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object v5, v13

    move-object/from16 v38, v5

    move-object/from16 v24, v16

    move-object/from16 v37, v17

    move-object/from16 v36, v18

    const/4 v4, 0x0

    move-object/from16 v16, v0

    move-object v13, v7

    move-object/from16 v17, v38

    move/from16 v0, v23

    move-object/from16 v7, v25

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v4, v16

    move-object/from16 v34, v17

    move-object/from16 v33, v18

    move-object/from16 v32, v20

    const/4 v5, 0x0

    move-object v13, v7

    move-object/from16 v16, v35

    move-object/from16 v17, v16

    move-object/from16 v7, v25

    goto/16 :goto_e

    :cond_1
    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move-object/from16 v26, v20

    move-object/from16 v5, v25

    :try_start_4
    new-instance v0, Lcom/enq/transceiver/transceivertool/util/HttpUtil;

    invoke-direct {v0}, Lcom/enq/transceiver/transceivertool/util/HttpUtil;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object/from16 v25, v5

    :try_start_5
    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_HTTPSTIME:I

    invoke-virtual {v0, v5}, Lcom/enq/transceiver/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_HTTPTIME:I

    invoke-virtual {v0, v5}, Lcom/enq/transceiver/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_urlPath:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/enq/transceiver/transceivertool/util/HttpUtil;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-nez v4, :cond_3

    :try_start_6
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v17, v13

    :try_start_7
    const-string v13, "no response from remote svr"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v18, v6

    :try_start_9
    const-string v6, "response:null"

    invoke-static {v0, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v3, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_customPipeCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v4}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v6, v18

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    move-object/from16 v6, v25

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v26

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v28

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v27

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v19

    move-object/from16 v4, v16

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v6, v18

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v6, v18

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_2
    move-object/from16 v18, v16

    move/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v13

    move-object/from16 v38, v5

    move-object v13, v7

    move-object/from16 v24, v18

    move-object/from16 v7, v25

    move-object/from16 v20, v26

    move-object/from16 v37, v27

    move-object/from16 v36, v28

    move-object/from16 v5, v17

    move-object/from16 v17, v38

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_3
    move-object/from16 v18, v16

    move/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v13

    move-object/from16 v35, v5

    move-object v13, v7

    move/from16 v23, v16

    move-object/from16 v16, v17

    move-object/from16 v7, v25

    move-object/from16 v32, v26

    move-object/from16 v34, v27

    move-object/from16 v33, v28

    move-object v5, v4

    move-object/from16 v17, v35

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v18, v16

    move/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v38, v17

    move-object v13, v7

    move-object/from16 v24, v18

    move-object/from16 v7, v25

    move-object/from16 v20, v26

    move-object/from16 v37, v27

    move-object/from16 v36, v28

    :goto_4
    move/from16 v39, v16

    move-object/from16 v16, v0

    move/from16 v0, v39

    goto/16 :goto_15

    :catch_5
    move-exception v0

    move-object/from16 v18, v16

    move/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v35, v17

    move-object v13, v7

    move/from16 v23, v16

    move-object/from16 v7, v25

    move-object/from16 v32, v26

    move-object/from16 v34, v27

    move-object/from16 v33, v28

    move-object v5, v4

    move-object/from16 v16, v35

    :goto_5
    move-object/from16 v4, v18

    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object v5, v13

    move-object/from16 v17, v5

    move-object/from16 v38, v17

    move-object v13, v7

    move-object/from16 v24, v16

    move-object/from16 v7, v25

    move-object/from16 v20, v26

    move-object/from16 v37, v27

    move-object/from16 v36, v28

    goto/16 :goto_14

    :catch_6
    move-exception v0

    move-object v5, v13

    move-object/from16 v17, v5

    move-object/from16 v35, v17

    move-object v13, v7

    move-object/from16 v7, v25

    move-object/from16 v32, v26

    move-object/from16 v34, v27

    move-object/from16 v33, v28

    move-object v5, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v35

    goto/16 :goto_e

    :cond_3
    move-object v5, v13

    move-object/from16 v18, v16

    move-object/from16 v13, v25

    move-object/from16 v29, v26

    move-object/from16 v31, v27

    move-object/from16 v30, v28

    :try_start_b
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    const-string v13, "response:%s"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    const/4 v6, 0x1

    :try_start_d
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v19

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move/from16 v6, v23

    :try_start_e
    invoke-virtual {v3, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_customPipeCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v7, v7, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v7, v7, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v7, v7, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v13, v17

    invoke-virtual {v0, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v7}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v8, v16

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v25

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v29

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v31

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_10

    :catch_7
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v19

    move-object/from16 v4, v18

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :catchall_5
    move-exception v0

    move-object/from16 v6, v16

    move-object/from16 v16, v4

    move-object/from16 v38, v4

    move-object/from16 v13, v17

    move-object/from16 v24, v18

    move-object/from16 v7, v25

    move-object/from16 v20, v29

    move-object/from16 v36, v30

    move-object/from16 v37, v31

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    goto/16 :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v6, v16

    move-object/from16 v13, v17

    move-object/from16 v7, v25

    move-object/from16 v32, v29

    move-object/from16 v33, v30

    move-object/from16 v34, v31

    move-object/from16 v16, v4

    move-object/from16 v4, v18

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object v13, v7

    move-object/from16 v38, v4

    move-object/from16 v24, v18

    move-object/from16 v7, v25

    goto :goto_6

    :catch_9
    move-exception v0

    move-object/from16 v16, v4

    move-object v13, v7

    move-object/from16 v4, v18

    move-object/from16 v7, v25

    move-object/from16 v32, v29

    move-object/from16 v33, v30

    move-object/from16 v34, v31

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v39, v13

    move-object v13, v7

    move-object/from16 v7, v39

    move-object/from16 v17, v5

    move-object/from16 v38, v4

    move-object/from16 v24, v18

    :goto_6
    move-object/from16 v20, v29

    move-object/from16 v36, v30

    move-object/from16 v37, v31

    goto/16 :goto_14

    :catch_a
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v4, v18

    move-object/from16 v32, v29

    move-object/from16 v33, v30

    move-object/from16 v34, v31

    move-object/from16 v39, v13

    move-object v13, v7

    move-object/from16 v7, v39

    :goto_7
    move-object/from16 v17, v5

    move-object/from16 v35, v16

    move-object/from16 v5, v35

    move-object/from16 v16, v17

    goto/16 :goto_e

    :catchall_8
    move-exception v0

    move-object v5, v13

    move-object/from16 v17, v5

    move-object/from16 v38, v17

    move-object v13, v7

    move-object/from16 v24, v16

    move-object/from16 v7, v25

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v5, v13

    move-object/from16 v4, v16

    move-object/from16 v32, v26

    move-object/from16 v34, v27

    move-object/from16 v33, v28

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object/from16 v39, v7

    move-object v7, v5

    move-object v5, v13

    move-object/from16 v13, v39

    move-object/from16 v17, v5

    move-object/from16 v38, v17

    move-object/from16 v24, v16

    :goto_8
    move-object/from16 v20, v26

    move-object/from16 v37, v27

    move-object/from16 v36, v28

    const/4 v4, 0x0

    goto/16 :goto_14

    :catch_c
    move-exception v0

    move-object/from16 v4, v16

    move-object/from16 v32, v26

    move-object/from16 v34, v27

    move-object/from16 v33, v28

    goto :goto_c

    :catchall_a
    move-exception v0

    move-object v5, v13

    move-object/from16 v38, v5

    move-object v13, v7

    move-object/from16 v24, v16

    move-object/from16 v37, v17

    move-object/from16 v36, v18

    move-object/from16 v7, v25

    goto :goto_a

    :catch_d
    move-exception v0

    move-object v5, v13

    move-object/from16 v4, v16

    move-object/from16 v34, v17

    move-object/from16 v33, v18

    move-object/from16 v32, v20

    :goto_9
    move-object v13, v7

    move-object/from16 v7, v25

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object/from16 v39, v7

    move-object v7, v5

    move-object v5, v13

    move-object/from16 v13, v39

    move-object/from16 v38, v5

    move-object/from16 v24, v16

    move-object/from16 v37, v17

    move-object/from16 v36, v18

    :goto_a
    const/4 v4, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v38

    :goto_b
    move/from16 v0, v23

    goto/16 :goto_15

    :catch_e
    move-exception v0

    move-object/from16 v4, v16

    move-object/from16 v34, v17

    move-object/from16 v33, v18

    move-object/from16 v32, v20

    :goto_c
    move-object/from16 v39, v7

    move-object v7, v5

    move-object v5, v13

    move-object/from16 v13, v39

    :goto_d
    move-object/from16 v16, v5

    move-object/from16 v17, v16

    move-object/from16 v35, v17

    const/4 v5, 0x0

    :goto_e
    :try_start_f
    sget-object v18, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10

    move-object/from16 v25, v7

    :try_start_10
    invoke-virtual/range {v18 .. v18}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    move-object/from16 v18, v6

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    move-object/from16 v20, v13

    :try_start_12
    sget-object v13, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    move-object/from16 v26, v2

    move-object/from16 v24, v8

    const/4 v8, 0x1

    :try_start_13
    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v19

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :try_start_14
    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v0, v0, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v26

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_customPipeCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    move-object/from16 v8, v24

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    move-object/from16 v13, v20

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v5}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_uuid:Ljava/lang/String;

    move-object/from16 v6, v18

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    move-object/from16 v6, v25

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v32

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v2

    invoke-virtual {v2, v14, v0}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v19

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_f
    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void

    :catchall_c
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v6, v18

    move-object/from16 v13, v20

    move-object/from16 v8, v24

    move-object/from16 v2, v26

    move-object/from16 v36, v33

    move-object/from16 v37, v34

    move-object/from16 v24, v4

    goto :goto_11

    :catchall_d
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v16, v6

    move-object/from16 v6, v18

    move-object/from16 v13, v20

    move-object/from16 v36, v33

    move-object/from16 v37, v34

    :goto_11
    move-object/from16 v18, v5

    move/from16 v20, v7

    move-object/from16 v5, v17

    move-object/from16 v7, v25

    goto :goto_12

    :catchall_e
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v20, v7

    move-object/from16 v6, v18

    move-object/from16 v7, v25

    move-object/from16 v36, v33

    move-object/from16 v37, v34

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    :goto_12
    move-object/from16 v17, v35

    move-object/from16 v38, v17

    move-object/from16 v4, v18

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v0

    move/from16 v0, v20

    move-object/from16 v20, v32

    goto :goto_15

    :catchall_f
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v7, v25

    goto :goto_13

    :catchall_10
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    :goto_13
    move-object/from16 v36, v33

    move-object/from16 v37, v34

    move-object/from16 v17, v35

    move-object/from16 v38, v17

    move-object/from16 v4, v18

    move-object/from16 v20, v32

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    :goto_14
    move-object/from16 v16, v0

    goto/16 :goto_b

    :goto_15
    :try_start_15
    invoke-virtual {v3, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v5}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v4, v4, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_customPipeCallback:Lcom/enq/transceiver/VmpCallback;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v4, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    iget-object v5, v5, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_rawData:Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-static {v5}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->generateJsonStr(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;->_uuid:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v20

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v36

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v37

    move-object/from16 v5, v38

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    invoke-virtual {v0, v14, v4}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v19

    move-object/from16 v4, v24

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    throw v16
.end method
