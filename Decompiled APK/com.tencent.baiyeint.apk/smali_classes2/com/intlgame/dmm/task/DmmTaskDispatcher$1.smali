.class Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;
.super Ljava/lang/Object;
.source "DmmTaskDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/dmm/task/DmmTaskDispatcher;->runTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/dmm/task/DmmTaskDispatcher;


# direct methods
.method constructor <init>(Lcom/intlgame/dmm/task/DmmTaskDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;->this$0:Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;->this$0:Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    iget-object v0, v0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;->this$0:Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    invoke-static {v0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->access$100(Lcom/intlgame/dmm/task/DmmTaskDispatcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;->this$0:Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    invoke-static {v0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->access$200(Lcom/intlgame/dmm/task/DmmTaskDispatcher;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/dmm/task/DmmSerialTask;

    invoke-virtual {v0}, Lcom/intlgame/dmm/task/DmmSerialTask;->doTask()V

    return-void
.end method
