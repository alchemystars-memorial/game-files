.class Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask$1;
.super Lcom/intlgame/core/interfaces/IActivityEventHandler;
.source "DmmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;


# direct methods
.method constructor <init>(Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;

    invoke-direct {p0}, Lcom/intlgame/core/interfaces/IActivityEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    const/16 p1, 0x270f

    const-string p2, "DMM login failed"

    if-eqz p3, :cond_1

    const-string v0, "error_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "error_message"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v5, p1

    move-object v6, p3

    goto :goto_1

    :cond_1
    move v5, p1

    move-object v6, p2

    :goto_1
    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p1

    iget-object v1, p1, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    const/16 v2, 0x65

    const/16 v3, 0x270f

    const-string v4, "login failed"

    invoke-static/range {v1 .. v6}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p1

    iget-object v0, p1, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    const/16 v1, 0x65

    const/4 v2, 0x2

    const/4 v4, 0x2

    const-string v3, "Cancelled"

    const-string v5, "Cancelled"

    invoke-static/range {v0 .. v5}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;

    invoke-virtual {p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;->onTaskEnd()V

    sget-object p1, Lcom/intlgame/DmmLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dmm plugin login successfully."

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v0

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v1

    iget-object v1, v1, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    invoke-virtual {v0, v1}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchPublishSessionTask(Lcom/intlgame/api/INTLBaseParams;)V

    sget-object v0, Lcom/intlgame/DmmLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v0, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;

    invoke-virtual {v0}, Lcom/intlgame/dmm/DmmTaskManager$DmmLoginTask;->onTaskEnd()V

    :cond_0
    return-void
.end method
