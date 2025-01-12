.class public Lcom/enq/transceiver/transceivertool/local/UdpDetect;
.super Ljava/lang/Object;
.source "UdpDetect.java"

# interfaces
.implements Lcom/enq/transceiver/transceivertool/local/ILocalTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;
    }
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field count:I

.field host:Ljava/lang/String;

.field port:I

.field timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->port:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->count:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->timeout:I

    const-string v0, "123"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkParam(Ljava/util/HashMap;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "invalid count"

    const-string v1, "invalid port"

    const-string v2, "count"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/enq/transceiver/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "please init first"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_0
    const-string v3, "host"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->host:Ljava/lang/String;

    :try_start_0
    const-string v3, "port"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0xffff

    if-gt v3, v4, :cond_9

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    iput v3, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->port:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_8

    if-ge v1, v4, :cond_4

    goto :goto_2

    :cond_4
    iput v1, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->count:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_5

    if-le v0, v4, :cond_5

    iput v0, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->timeout:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xea60

    if-le v1, v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->content:Ljava/lang/String;

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_7
    :goto_1
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "invalid content"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_8
    :goto_2
    :try_start_3
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return p1

    :catch_1
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_9
    :goto_3
    :try_start_4
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return p1

    :catch_2
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_a
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

    invoke-virtual {p0, v0}, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->checkParam(Ljava/util/HashMap;)I

    move-result v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/enq/transceiver/transceivertool/local/UdpDetect$AsyncTask;-><init>(Lcom/enq/transceiver/transceivertool/local/UdpDetect;Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method
