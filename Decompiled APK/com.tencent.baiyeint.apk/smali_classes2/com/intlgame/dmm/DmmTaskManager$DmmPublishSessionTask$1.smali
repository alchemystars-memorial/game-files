.class Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;
.super Ljava/lang/Object;
.source "DmmTaskManager.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;


# direct methods
.method constructor <init>(Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private continuedToLogin()V
    .locals 1

    new-instance v0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1$1;

    invoke-direct {v0, p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1$1;-><init>(Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;)V

    invoke-static {v0}, Lcom/intlgame/dmm/DmmTaskManager;->access$200(Lcom/intlgame/dmm/DmmTaskManager$OnGetOlgIdListener;)V

    return-void
.end method


# virtual methods
.method public onApiFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v4, p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    iget-object v0, p1, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    const/16 v1, 0x65

    const/16 v2, 0x270f

    const-string v3, "DMM publish session error"

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    invoke-virtual {p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->onTaskEnd()V

    return-void
.end method

.method public onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;)V
    .locals 6

    sget-object p1, Lcom/intlgame/dmm/DmmTaskManager$2;->$SwitchMap$com$dmm$android$sdk$olgid$DmmOlgIdAccessTokenCallback$ErrorKind:[I

    invoke-virtual {p3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x270f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "Unknown error"

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x3ea

    const-string p1, "access_token_is_expired"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->continuedToLogin()V

    return-void

    :cond_2
    const-string p1, "NEED_LOGIN"

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    iget-object v0, p1, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    const/16 v1, 0x65

    const/4 v4, -0x1

    const-string v3, "DMM publish session error"

    invoke-static/range {v0 .. v5}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->this$0:Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;

    invoke-virtual {p1}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask;->onTaskEnd()V

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V
    .locals 0

    const-string p1, "dmm publish session successfully."

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/intlgame/dmm/DmmTaskManager$DmmPublishSessionTask$1;->continuedToLogin()V

    return-void
.end method
