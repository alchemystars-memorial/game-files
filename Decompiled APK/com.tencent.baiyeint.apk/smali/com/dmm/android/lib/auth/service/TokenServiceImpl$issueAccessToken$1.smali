.class public final Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;
.super Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;
.source "TokenServiceImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback<",
        "Lcom/dmm/android/lib/auth/api/json/TokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0002H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;",
        "Lcom/dmm/android/lib/auth/api/json/TokenResponse;",
        "onCancel",
        "",
        "onError",
        "e",
        "",
        "onFailure",
        "error",
        "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;",
        "onStart",
        "request",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "onSuccess",
        "model",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

.field final synthetic this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;


# direct methods
.method constructor <init>(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;Lcom/dmm/android/lib/auth/listener/TokenEventListener;[Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/lib/auth/listener/TokenEventListener;",
            "[",
            "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->$listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    invoke-direct {p0, p3}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;-><init>([Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    invoke-static {}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u30c8\u30fc\u30af\u30f3\u767a\u884c\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    invoke-static {v0}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$clearLocalData(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->$listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NETWORK_INTERRUPT:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-interface {v0, v1}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onCancelLogin(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u30c8\u30fc\u30af\u30f3\u767a\u884c\u5931\u6557"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dmm/android/lib/auth/model/HttpError$InternalError;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/model/HttpError$InternalError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/HttpError$InternalError;->getLogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$clearLocalData(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->$listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    if-eqz p1, :cond_0

    check-cast v0, Lcom/dmm/android/lib/auth/model/HttpError;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onFailedLogin(Lcom/dmm/android/lib/auth/model/HttpError;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u30c8\u30fc\u30af\u30f3\u767a\u884c\u5931\u6557"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dmm/android/lib/auth/model/HttpError$ServerError;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIErrorKt;->convertToApiError(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)Lcom/dmm/android/lib/auth/model/ApiError;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/model/HttpError$ServerError;-><init>(Lcom/dmm/android/lib/auth/model/ApiError;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/HttpError$ServerError;->getLogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$clearLocalData(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->$listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    if-eqz p1, :cond_0

    check-cast v0, Lcom/dmm/android/lib/auth/model/HttpError;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onFailedLogin(Lcom/dmm/android/lib/auth/model/HttpError;)V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/dmm/android/lib/auth/api/HttpRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u30c8\u30fc\u30af\u30f3\u767a\u884c\u51e6\u7406\u958b\u59cb"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->$listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onStartPublishToken()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V
    .locals 0

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/TokenResponse;

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->onSuccess(Lcom/dmm/android/lib/auth/api/json/TokenResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/lib/auth/api/json/TokenResponse;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse;->getBody()Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getIdToken()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/service/ConfigService;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    invoke-static {v2}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$getJwtService$p(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;)Lcom/dmm/android/lib/auth/service/JWTService;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/dmm/android/lib/auth/service/JWTService;->certificate(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/lib/auth/service/CertificateResult;

    move-result-object v0

    instance-of v1, v0, Lcom/dmm/android/lib/auth/service/CertificateResult$Success;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    invoke-static {v0, p1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$save(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;Lcom/dmm/android/lib/auth/api/json/TokenResponse;)V

    sget-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/service/ConfigService;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getExtendTokenAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse;->getBody()Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->$listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    invoke-static {v0, p1, v1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$exchangeAccessToken(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->$listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse;->getBody()Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/TokenResponse$Body;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onCompleteLogin(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p1, v0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "\u30c8\u30fc\u30af\u30f3\u767a\u884c\u5931\u6557"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->this$0:Lcom/dmm/android/lib/auth/service/TokenServiceImpl;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/service/TokenServiceImpl;->access$clearLocalData(Lcom/dmm/android/lib/auth/service/TokenServiceImpl;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/TokenServiceImpl$issueAccessToken$1;->$listener:Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/dmm/android/lib/auth/model/HttpError$InternalError;

    check-cast v0, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/service/CertificateResult$Failure;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dmm/android/lib/auth/model/HttpError$InternalError;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/dmm/android/lib/auth/model/HttpError;

    invoke-interface {p1, v1}, Lcom/dmm/android/lib/auth/listener/TokenEventListener;->onFailedLogin(Lcom/dmm/android/lib/auth/model/HttpError;)V

    :cond_2
    :goto_0
    return-void
.end method
