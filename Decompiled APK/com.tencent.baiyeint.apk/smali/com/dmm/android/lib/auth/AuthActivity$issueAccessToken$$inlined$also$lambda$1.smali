.class public final Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "AuthActivity.kt"

# interfaces
.implements Lcom/dmm/android/lib/auth/listener/TokenEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/AuthActivity;->issueAccessToken(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016\u00a8\u0006\r\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dmm/android/lib/auth/AuthActivity$issueAccessToken$1$1",
        "Lcom/dmm/android/lib/auth/listener/TokenEventListener;",
        "onCancelLogin",
        "",
        "reason",
        "Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;",
        "onCompleteLogin",
        "accessToken",
        "",
        "onFailedLogin",
        "error",
        "Lcom/dmm/android/lib/auth/model/HttpError;",
        "onStartPublishToken",
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
.field final synthetic this$0:Lcom/dmm/android/lib/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/dmm/android/lib/auth/AuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelLogin(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->access$dismissProgress(Lcom/dmm/android/lib/auth/AuthActivity;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    sget-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NETWORK_INTERRUPT:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-static {p1, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->access$notifyCancelAndFinish(Lcom/dmm/android/lib/auth/AuthActivity;Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void
.end method

.method public onCompleteLogin(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {v0}, Lcom/dmm/android/lib/auth/AuthActivity;->access$dismissProgress(Lcom/dmm/android/lib/auth/AuthActivity;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->notifySuccess(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->access$finishCompletely(Lcom/dmm/android/lib/auth/AuthActivity;)V

    return-void
.end method

.method public onFailedLogin(Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {v0}, Lcom/dmm/android/lib/auth/AuthActivity;->access$dismissProgress(Lcom/dmm/android/lib/auth/AuthActivity;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->notifyFailure(Lcom/dmm/android/lib/auth/model/HttpError;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->access$finishCompletely(Lcom/dmm/android/lib/auth/AuthActivity;)V

    return-void
.end method

.method public onStartPublishToken()V
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/AuthActivity$issueAccessToken$$inlined$also$lambda$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {v0}, Lcom/dmm/android/lib/auth/AuthActivity;->access$showProgress(Lcom/dmm/android/lib/auth/AuthActivity;)V

    return-void
.end method
