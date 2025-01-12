.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;
.super Lcom/dmm/android/api/DmmApiCallBack;
.source "DmmOlgIdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->updateAccessToken(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

.field final synthetic val$callback:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

.field final synthetic val$kind:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->val$callback:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->val$kind:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;

    invoke-direct {p0}, Lcom/dmm/android/api/DmmApiCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$3;

    invoke-direct {v1, p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$3;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFailed(Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;)V
    .locals 7

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;->getError()Lcom/dmm/android/lib/auth/model/HttpError;

    move-result-object p1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->UNKNOWN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/HttpError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/HttpError;->getLogMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;Lcom/dmm/android/lib/auth/model/HttpError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$1;

    invoke-direct {v1, p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$1;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
