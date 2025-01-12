.class public final Lcom/intlgame/dmm/DmmTaskManager;
.super Ljava/lang/Object;
.source "DmmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/dmm/DmmTaskManager$SingletonHolder;,
        Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;,
        Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;,
        Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;,
        Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;,
        Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;
    }
.end annotation


# instance fields
.field public loginParams:Lcom/intlgame/api/INTLBaseParams;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/dmm/DmmTaskManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/dmm/DmmTaskManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;)V
    .locals 0

    invoke-static {p0}, Lcom/intlgame/dmm/DmmTaskManager;->getOlgId(Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;)V

    return-void
.end method

.method private dispatchNewTask(Lcom/intlgame/dmm/task/DmmSerialTask;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->getInstance()Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->dispatch(Lcom/intlgame/dmm/task/DmmSerialTask;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/intlgame/dmm/DmmTaskManager;
    .locals 1

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager$SingletonHolder;->access$000()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v0

    return-object v0
.end method

.method private static getOlgId(Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;)V
    .locals 2

    const-string v0, "start getOlgId."

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    new-instance v1, Lcom/intlgame/dmm/DmmTaskManager$1;

    invoke-direct {v1, p0}, Lcom/intlgame/dmm/DmmTaskManager$1;-><init>(Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;)V

    sget-object p0, Lcom/intlgame/dmm/DmmUtil;->mGetValidateCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getOlgId(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchDmmConfigTask()V
    .locals 2

    new-instance v0, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/dmm/DmmTaskManager$DmmConfigTask;-><init>(Lcom/intlgame/dmm/DmmTaskManager$1;)V

    invoke-direct {p0, v0}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchNewTask(Lcom/intlgame/dmm/task/DmmSerialTask;)V

    return-void
.end method

.method public dispatchDmmLoginTask(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 1

    new-instance v0, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;

    invoke-direct {v0, p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;-><init>(Lcom/intlgame/api/INTLBaseParams;)V

    invoke-direct {p0, v0}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchNewTask(Lcom/intlgame/dmm/task/DmmSerialTask;)V

    return-void
.end method

.method public dispatchLoginToINTLServerTask(Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/INTLBaseParams;)V
    .locals 1

    new-instance v0, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/intlgame/dmm/DmmTaskManager$LoginToINTLServerTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/INTLBaseParams;)V

    invoke-direct {p0, v0}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchNewTask(Lcom/intlgame/dmm/task/DmmSerialTask;)V

    return-void
.end method

.method public dispatchPublishSessionTask(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 1

    new-instance v0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    invoke-direct {v0, p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;-><init>(Lcom/intlgame/api/INTLBaseParams;)V

    invoke-direct {p0, v0}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchNewTask(Lcom/intlgame/dmm/task/DmmSerialTask;)V

    return-void
.end method

.method public stopTask()V
    .locals 1

    invoke-static {}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->getInstance()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->stop()V

    invoke-static {}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->getInstance()Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->stop()V

    return-void
.end method
