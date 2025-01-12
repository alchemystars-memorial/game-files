.class public Lcom/intlgame/api/update/INTLUpdateProgress;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLUpdateProgress.java"


# instance fields
.field public action_type_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "action_type"
    .end annotation
.end field

.field public error_msg_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "error_msg"
    .end annotation
.end field

.field public finished_size_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "finished_size"
    .end annotation
.end field

.field public method_id_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "methodID"
    .end annotation
.end field

.field public remain_time_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "remain_time"
    .end annotation
.end field

.field public repo_id_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "repo_id"
    .end annotation
.end field

.field public speed_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "speed"
    .end annotation
.end field

.field public step_progress_:D
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "step_progress"
    .end annotation
.end field

.field public task_id_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "task_id"
    .end annotation
.end field

.field public total_progress_:D
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "total_progress"
    .end annotation
.end field

.field public total_size_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "total_size"
    .end annotation
.end field

.field public update_step_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "update_step"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    return-void
.end method
