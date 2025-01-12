.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->getOlgId(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

.field final synthetic val$appendixPostParam:Ljava/util/Map;

.field final synthetic val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

.field final synthetic val$callbackUrl:Ljava/lang/String;

.field final synthetic val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/util/Map;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$callbackUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    iput-object p4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$appendixPostParam:Ljava/util/Map;

    iput-object p5, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParserError(Ljava/lang/Throwable;)V
    .locals 10

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {v0, v1, p1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object v3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$4;

    invoke-direct {v1, p0, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$4;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/api/mobile/DmmApiResponse;)V
    .locals 11

    instance-of v0, p1, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dmm/android/api/DmmApiSecurityToken;->getInstance()Lcom/dmm/android/api/DmmApiSecurityToken;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getSecurityToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/DmmApiSecurityToken;->updateSecurityToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getOAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getOAuthTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dmm/android/oauth/DmmApiAuthToken;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$callbackUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$appendixPostParam:Ljava/util/Map;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$700(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->CheckUserError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getErrorNo()I

    move-result v2

    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {v0, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->CheckUserError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getErrorNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$1;

    invoke-direct {v1, p0, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$1;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p1, v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onVolleyError(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->HttpStatusError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iget v0, v0, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILjava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NetworkError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {v1, v0, p1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object p1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$3;

    invoke-direct {v0, p0, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$3;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
