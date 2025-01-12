.class public Lcom/enq/transceiver/transceivertool/local/IcmpDetect;
.super Ljava/lang/Object;
.source "IcmpDetect.java"

# interfaces
.implements Lcom/enq/transceiver/transceivertool/local/ILocalTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;
    }
.end annotation


# instance fields
.field count:I

.field host:Ljava/lang/String;

.field interval:I

.field size:I

.field timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->host:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->count:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->size:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->timeout:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->interval:I

    return-void
.end method


# virtual methods
.method public checkParam(Ljava/util/HashMap;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "invalid size"

    const-string v1, "invalid count"

    const-string/jumbo v2, "size"

    const-string v3, "count"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/enq/transceiver/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "please init first"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "extraData is null"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_1
    const-string v4, "host"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->host:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "1"

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_a

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    iput v3, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_SIZE:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5c0

    if-gt v1, v2, :cond_9

    const/16 v2, 0x10

    if-ge v1, v2, :cond_6

    goto :goto_2

    :cond_6
    iput v1, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->size:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_7

    if-le v0, v4, :cond_7

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->timeout:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    :try_start_3
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x5dc

    if-ge p1, v0, :cond_8

    if-le p1, v4, :cond_8

    iput p1, p0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->interval:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_9
    :goto_2
    :try_start_4
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return p1

    :catch_2
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_a
    :goto_3
    :try_start_5
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return p1

    :catch_3
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_b
    :goto_4
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "invalid host"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method

.method public exceuteLocalTask(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)I
    .locals 2

    iget-object v0, p1, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->checkParam(Ljava/util/HashMap;)I

    move-result v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/enq/transceiver/transceivertool/local/IcmpDetect$AsyncTask;-><init>(Lcom/enq/transceiver/transceivertool/local/IcmpDetect;Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method
