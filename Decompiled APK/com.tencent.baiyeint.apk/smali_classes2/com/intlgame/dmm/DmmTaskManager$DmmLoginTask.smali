.class Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;
.super Lcom/intlgame/dmm/task/DmmSerialTask;
.source "DmmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/dmm/DmmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DmmLoginTask"
.end annotation


# direct methods
.method constructor <init>(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 1

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmSerialTask;-><init>()V

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v0

    iput-object p1, v0, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 10

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isSanbox()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/intlgame/DmmLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/16 v2, 0xa

    new-instance v3, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask$1;

    invoke-direct {v3, p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask$1;-><init>(Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;->onTaskEnd()V

    :goto_0
    invoke-static {v0}, Lcom/intlgame/dmm/DmmUtil;->login(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    const-string v7, "Dmm login action must execute INTLSDK.initialize() first !!!"

    invoke-static {v7}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v0

    iget-object v4, v0, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    const/16 v5, 0x65

    const/16 v6, 0x11

    const/4 v8, -0x1

    const-string v9, ""

    invoke-static/range {v4 .. v9}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;->onTaskEnd()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v0

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v1

    iget-object v1, v1, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    invoke-virtual {v0, v1}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchPublishSessionTask(Lcom/intlgame/api/INTLBaseParams;)V

    invoke-virtual {p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;->onTaskEnd()V

    :goto_1
    return-void
.end method
