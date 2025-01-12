.class public abstract Lcom/intlgame/dmm/task/DmmSerialTask;
.super Ljava/lang/Object;
.source "DmmSerialTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doTask()V
.end method

.method public onTaskEnd()V
    .locals 1

    invoke-static {}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->getInstance()Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->dispatchNext()V

    return-void
.end method
