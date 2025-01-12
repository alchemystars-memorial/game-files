.class Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1$1;
.super Ljava/lang/Object;
.source "DmmTaskManager.java"

# interfaces
.implements Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->continuedToLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;


# direct methods
.method constructor <init>(Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1$1;->this$1:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1$1;->this$1:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;

    iget-object v0, v0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    iget-object v1, v0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    const/16 v2, 0x65

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1$1;->this$1:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;

    iget-object p1, p1, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    invoke-virtual {p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->onTaskEnd()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1$1;->this$1:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;

    iget-object v1, v1, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    iget-object v1, v1, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    invoke-virtual {v0, p1, p2, v1}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchLoginToINTLServerTask(Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/INTLBaseParams;)V

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1$1;->this$1:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;

    iget-object p1, p1, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    invoke-virtual {p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->onTaskEnd()V

    return-void
.end method
