.class public abstract Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.super Ljava/lang/Object;
.source "TNetCommandTask.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public errorCode:I

.field public executeCount:I

.field public name:Ljava/lang/String;

.field public result:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public taskID:J

.field public taskScene:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->status:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->taskID:J

    const-string v0, ""

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->type:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->data:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->result:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput v1, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->executeCount:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->errorCode:I

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->taskScene:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract checkParamValid()Z
.end method

.method public abstract executeTask()V
.end method

.method public abstract reportResult()V
.end method
