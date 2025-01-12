.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;


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

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;->val$callback:Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;)V
    .locals 4

    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Cancel:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v1, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Cancel:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DmmGameStoreConfig"

    invoke-static {v0, v3, v1, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2$2;

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2$2;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFailure(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 4

    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p1, v0, p2, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v1, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DmmGameStoreConfig"

    invoke-static {v0, v3, v1, v2, p2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Lcom/dmm/games/android/volley/VolleyError;)V

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2$3;

    invoke-direct {v0, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2$3;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->getConfigGetEndpoint()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->getConfigGetEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->getUserCheckEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->getUserStEndpoint()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;->val$callback:Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;

    invoke-virtual {p1, p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->configure(Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object p2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/4 v0, 0x0

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p1, p2, v0, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object p2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DmmGameStoreConfig"

    invoke-static {p2, v2, v0, v1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2$1;

    invoke-direct {v0, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2$1;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
