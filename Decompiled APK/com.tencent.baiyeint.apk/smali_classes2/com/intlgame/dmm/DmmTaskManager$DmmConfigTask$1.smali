.class Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask$1;
.super Ljava/lang/Object;
.source "DmmTaskManager.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;


# direct methods
.method constructor <init>(Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/dmm/android/sdk/olgid/DmmOlgId;)V
    .locals 0

    const-string p1, "Dmm plugin config cancel"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;

    invoke-virtual {p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;->onTaskEnd()V

    return-void
.end method

.method public onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V
    .locals 0

    const-string p1, "Dmm plugin config failed"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;

    invoke-virtual {p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;->onTaskEnd()V

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V
    .locals 0

    const-string p1, "Dmm plugin config success"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;

    invoke-virtual {p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;->onTaskEnd()V

    return-void
.end method
