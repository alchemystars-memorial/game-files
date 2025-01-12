.class public Lcom/enq/transceiver/transceivertool/local/CustomPipe;
.super Ljava/lang/Object;
.source "CustomPipe.java"

# interfaces
.implements Lcom/enq/transceiver/transceivertool/local/ILocalTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkParam(Ljava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "please init first"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_0
    const-string v0, "cmdId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v0, "no cmdId"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method

.method public exceuteLocalTask(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)I
    .locals 3

    iget-object v0, p1, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/enq/transceiver/transceivertool/local/CustomPipe;->checkParam(Ljava/util/HashMap;)I

    move-result v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->CUSTOMPIPE_LOCATION:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "https://%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/enq/transceiver/transceivertool/local/CustomPipe$AsyncTask;-><init>(Ljava/lang/String;Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    return p1
.end method
