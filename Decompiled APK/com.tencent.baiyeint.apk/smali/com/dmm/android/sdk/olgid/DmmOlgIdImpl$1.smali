.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->requestValidateOlgId(Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

.field final synthetic val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

.field final synthetic val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

.field final synthetic val$response:Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$response:Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    iput-object p4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;)V
    .locals 3

    sget-object p1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Cancel:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->clearInstance()V

    invoke-static {}, Lcom/dmm/android/api/DmmApiSecurityToken;->getInstance()Lcom/dmm/android/api/DmmApiSecurityToken;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dmm/android/api/DmmApiSecurityToken;->updateSecurityToken(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
    .locals 4

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->clearInstance()V

    invoke-static {}, Lcom/dmm/android/api/DmmApiSecurityToken;->getInstance()Lcom/dmm/android/api/DmmApiSecurityToken;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dmm/android/api/DmmApiSecurityToken;->updateSecurityToken(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Lcom/dmm/games/android/volley/VolleyError;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/dmm/games/android/volley/VolleyError;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    :cond_1
    if-eqz v0, :cond_2

    new-instance p2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->HttpStatusError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iget v0, v0, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p2, v1, v0, p1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILjava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->HttpStatusError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NetworkError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-direct {p2, v0, p1, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;Ljava/lang/Throwable;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NetworkError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    :goto_1
    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0, p1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Lcom/dmm/games/android/volley/VolleyError;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$3;

    invoke-direct {v0, p0, p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$3;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
    .locals 11

    invoke-static {p2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse;->getCallbackResponseData(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->getBody()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x194

    move-object v1, p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$response:Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;

    invoke-virtual {p2}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$1;

    invoke-direct {v0, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$1;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->clearInstance()V

    invoke-static {}, Lcom/dmm/android/api/DmmApiSecurityToken;->getInstance()Lcom/dmm/android/api/DmmApiSecurityToken;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/dmm/android/api/DmmApiSecurityToken;->updateSecurityToken(Ljava/lang/String;)V

    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->OlgIdValidityError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;IILjava/lang/Object;)V

    sget-object v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->OlgIdValidityError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    move-object v10, p2

    invoke-static/range {v4 .. v10}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$2;

    invoke-direct {v0, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$2;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$100(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$response:Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;

    invoke-virtual {p2}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$200(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Z

    move-result v0

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$300(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Z

    move-result v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/dmm/android/sdk/olgid/report/DmmPageView;->send(Ljava/lang/String;Ljava/lang/String;ZLcom/dmm/games/android/volley/RequestQueue;Z)V

    return-void
.end method
