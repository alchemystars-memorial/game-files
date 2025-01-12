.class Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$1;
.super Ljava/lang/Object;
.source "DmmOlgIdReleaseAuthAgent.java"

# interfaces
.implements Lcom/dmm/android/lib/auth/listener/SessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;->publishIntSession(Lcom/dmm/android/api/DmmApiCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;

.field final synthetic val$callback:Lcom/dmm/android/api/DmmApiCallBack;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;Lcom/dmm/android/api/DmmApiCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$1;->this$0:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$1;->val$callback:Lcom/dmm/android/api/DmmApiCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelSessions(Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;)V
    .locals 0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$1;->val$callback:Lcom/dmm/android/api/DmmApiCallBack;

    invoke-virtual {p1}, Lcom/dmm/android/api/DmmApiCallBack;->onCancelled()V

    return-void
.end method

.method public onCompleteSession(Lcom/dmm/android/lib/auth/model/SessionID;)V
    .locals 1

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/SessionID;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/SessionID;->getSecureId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/dmm/android/auth/DmmAuthData;->createInstance(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$1;->val$callback:Lcom/dmm/android/api/DmmApiCallBack;

    invoke-virtual {p1}, Lcom/dmm/android/api/DmmApiCallBack;->onSuccess()V

    return-void
.end method

.method public onFailedSession(Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 1

    new-instance v0, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;

    invoke-direct {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;-><init>()V

    invoke-virtual {v0, p1}, Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;->setError(Lcom/dmm/android/lib/auth/model/HttpError;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdReleaseAuthAgent$1;->val$callback:Lcom/dmm/android/api/DmmApiCallBack;

    invoke-virtual {p1, v0}, Lcom/dmm/android/api/DmmApiCallBack;->onFailed(Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;)V

    return-void
.end method

.method public onStartSession()V
    .locals 0

    return-void
.end method
