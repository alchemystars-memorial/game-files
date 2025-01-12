.class public Lcom/enq/transceiver/transceivertool/json/TaskConfig;
.super Ljava/lang/Object;
.source "TaskConfig.java"


# instance fields
.field public code:I

.field public ip:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public task:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->code:I

    const-string v0, ""

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->ip:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->task:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->code:I

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->message:Ljava/lang/String;

    const-string v0, "ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->ip:Ljava/lang/String;

    const-string/jumbo v0, "task"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;

    invoke-direct {v1}, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->parseJson(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->task:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
