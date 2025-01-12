.class public final Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;
.super Ljava/lang/Object;
.source "AuthActivity.kt"

# interfaces
.implements Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/AuthActivity;->launchWebView(Ljava/lang/String;)V
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
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J$\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "com/dmm/android/lib/auth/AuthActivity$launchWebView$client$1",
        "Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;",
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
        "onWebViewLoadFail",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onWebViewLoadStart",
        "url",
        "onWebViewLoadSuccess",
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelLogin(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    sget-object v0, Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;->NETWORK_INTERRUPT:Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;

    invoke-static {p1, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->access$notifyCancelAndFinish(Lcom/dmm/android/lib/auth/AuthActivity;Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    return-void
.end method

.method public onCompleteLogin(Ljava/lang/String;)V
    .locals 4

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->notifySuccess(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->access$finishCompletely(Lcom/dmm/android/lib/auth/AuthActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {v2}, Lcom/dmm/android/lib/auth/AuthActivity;->access$getConfig$p(Lcom/dmm/android/lib/auth/AuthActivity;)Lcom/dmm/android/lib/auth/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/lib/auth/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {v3}, Lcom/dmm/android/lib/auth/AuthActivity;->access$getConfig$p(Lcom/dmm/android/lib/auth/AuthActivity;)Lcom/dmm/android/lib/auth/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dmm/android/lib/auth/Config;->getResumeLoginClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "complete_continues_login"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/dmm/android/lib/auth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_1
    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->access$getWebView$p(Lcom/dmm/android/lib/auth/AuthActivity;)Lcom/dmm/android/lib/auth/view/AuthWebView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onFailedLogin(Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/AuthActivityObserver;->notifyFailure(Lcom/dmm/android/lib/auth/model/HttpError;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$client$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->access$finishCompletely(Lcom/dmm/android/lib/auth/AuthActivity;)V

    return-void
.end method

.method public onStartPublishToken()V
    .locals 0

    return-void
.end method

.method public onWebViewLoadFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebViewLoadStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebViewLoadSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
