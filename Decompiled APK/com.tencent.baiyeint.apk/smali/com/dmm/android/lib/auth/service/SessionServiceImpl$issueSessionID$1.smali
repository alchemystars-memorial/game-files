.class public final Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;
.super Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;
.source "SessionServiceImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->issueSessionID(Ljava/lang/String;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback<",
        "Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;",
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
        "com/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1",
        "Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;",
        "Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;",
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
.field final synthetic $listener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

.field final synthetic this$0:Lcom/dmm/android/lib/auth/service/SessionServiceImpl;


# direct methods
.method constructor <init>(Lcom/dmm/android/lib/auth/service/SessionServiceImpl;Lcom/dmm/android/lib/auth/listener/SessionEventListener;[Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/lib/auth/listener/SessionEventListener;",
            "[",
            "Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->this$0:Lcom/dmm/android/lib/auth/service/SessionServiceImpl;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->$listener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    invoke-direct {p0, p3}, Lcom/dmm/android/lib/auth/api/openapi/DMMOpenAPICallback;-><init>([Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    invoke-static {}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u30bb\u30c3\u30b7\u30e7\u30f3\u767a\u884c\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->$listener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;->NETWORK_INTERRUPT:Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;

    invoke-interface {v0, v1}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onCancelSessions(Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u30bb\u30c3\u30b7\u30e7\u30f3\u767a\u884c\u5931\u6557"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dmm/android/lib/auth/model/HttpError$InternalError;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/model/HttpError$InternalError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/HttpError$InternalError;->getLogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->$listener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz p1, :cond_0

    check-cast v0, Lcom/dmm/android/lib/auth/model/HttpError;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onFailedSession(Lcom/dmm/android/lib/auth/model/HttpError;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u30bb\u30c3\u30b7\u30e7\u30f3\u767a\u884c\u5931\u6557"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dmm/android/lib/auth/model/HttpError$ServerError;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIErrorKt;->convertToApiError(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIError;)Lcom/dmm/android/lib/auth/model/ApiError;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/model/HttpError$ServerError;-><init>(Lcom/dmm/android/lib/auth/model/ApiError;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/model/HttpError$ServerError;->getLogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->$listener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz p1, :cond_0

    check-cast v0, Lcom/dmm/android/lib/auth/model/HttpError;

    invoke-interface {p1, v0}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onFailedSession(Lcom/dmm/android/lib/auth/model/HttpError;)V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/dmm/android/lib/auth/api/HttpRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u30bb\u30c3\u30b7\u30e7\u30f3\u767a\u884c\u51e6\u7406\u958b\u59cb"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->$listener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onStartSession()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/dmm/android/lib/auth/api/json/DMMOpenAPIResponse;)V
    .locals 0

    check-cast p1, Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;

    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->onSuccess(Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u30bb\u30c3\u30b7\u30e7\u30f3\u767a\u884c\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->this$0:Lcom/dmm/android/lib/auth/service/SessionServiceImpl;

    invoke-static {v0, p1}, Lcom/dmm/android/lib/auth/service/SessionServiceImpl;->access$save(Lcom/dmm/android/lib/auth/service/SessionServiceImpl;Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/service/SessionServiceImpl$issueSessionID$1;->$listener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/dmm/android/lib/auth/model/SessionID;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;->getBody()Lcom/dmm/android/lib/auth/api/json/SessionIDResponse$Body;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/lib/auth/api/json/SessionIDResponse$Body;->getSecureId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/SessionIDResponse;->getBody()Lcom/dmm/android/lib/auth/api/json/SessionIDResponse$Body;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/json/SessionIDResponse$Body;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/dmm/android/lib/auth/model/SessionID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onCompleteSession(Lcom/dmm/android/lib/auth/model/SessionID;)V

    :cond_0
    return-void
.end method
