.class Lnet/aihelp/data/logic/InitPresenter$4;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "InitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->requestInit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/ReqCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/InitPresenter;

.field final synthetic val$cachedInitData:Ljava/lang/String;

.field final synthetic val$lastInitTime:J

.field final synthetic val$requireCallback:Z


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/InitPresenter;ZLjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$4;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    iput-boolean p2, p0, Lnet/aihelp/data/logic/InitPresenter$4;->val$requireCallback:Z

    iput-object p3, p0, Lnet/aihelp/data/logic/InitPresenter$4;->val$cachedInitData:Ljava/lang/String;

    iput-wide p4, p0, Lnet/aihelp/data/logic/InitPresenter$4;->val$lastInitTime:J

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$4;->val$cachedInitData:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$4;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/InitPresenter;->access$400(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;->retryInitRequest(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$4;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    iget-boolean p2, p0, Lnet/aihelp/data/logic/InitPresenter$4;->val$requireCallback:Z

    iget-object p3, p0, Lnet/aihelp/data/logic/InitPresenter$4;->val$cachedInitData:Ljava/lang/String;

    iget-wide v0, p0, Lnet/aihelp/data/logic/InitPresenter$4;->val$lastInitTime:J

    invoke-static {p1, p2, p3, v0, v1}, Lnet/aihelp/data/logic/InitPresenter;->access$500(Lnet/aihelp/data/logic/InitPresenter;ZLjava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onAsyncReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/InitPresenter$4;->onAsyncReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAsyncReqSuccess(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$4;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/InitPresenter;->access$400(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$4;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    iget-boolean v1, p0, Lnet/aihelp/data/logic/InitPresenter$4;->val$requireCallback:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lnet/aihelp/data/logic/InitPresenter;->access$500(Lnet/aihelp/data/logic/InitPresenter;ZLjava/lang/String;J)V

    return-void
.end method
