.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->configure(Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

.field final synthetic val$callback:Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->val$callback:Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParserError(Ljava/lang/Throwable;)V
    .locals 4

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {v0, v1, p1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object p1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v1, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DmmConfigGetRequestCreateHelper"

    invoke-static {p1, v3, v1, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$5;

    invoke-direct {v1, p0, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$5;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/api/mobile/DmmApiResponse;)V
    .locals 5

    instance-of v0, p1, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->isMaintenance()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Maintenance:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v2, Lcom/dmm/android/api/error/DmmApiRuntimeException;

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getMaintenanceMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/dmm/android/api/error/DmmApiRuntimeException;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {v0, v1, v2, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object p1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v1, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;

    const-string v1, "DmmConfigGetRequestCreateHelper"

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Maintenance:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$1;

    invoke-direct {v1, p0, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$1;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$500(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isSandbox()Z

    move-result v3

    iget-object v4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$500(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getApplicationID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->createInstance(ZLjava/lang/String;Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;)Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$402(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;)Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    new-instance v0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;

    invoke-static {}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getInstance()Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getUserCheckEndpoint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$500(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isEmulator()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;-><init>(Ljava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$602(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;)Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;

    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p1, v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$2;

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$2;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p1, v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v1, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;

    const-string v1, "DmmConfigGetRequestCreateHelper"

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$3;

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$3;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onVolleyError(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 5

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->HttpStatusError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->HttpStatusError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iget v0, v0, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    sget-object v4, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {v2, v3, v0, p1, v4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILjava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NetworkError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NetworkError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {v2, v1, p1, v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v3, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;

    sget-object v3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DmmConfigGetRequestCreateHelper"

    invoke-static {v1, v4, v3, v0, p1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Lcom/dmm/games/android/volley/VolleyError;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$4;

    invoke-direct {v0, p0, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3$4;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
