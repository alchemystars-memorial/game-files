.class Lnet/aihelp/data/logic/ElvaBotPresenter$3;
.super Ljava/lang/Object;
.source "ElvaBotPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/ElvaBotPresenter;->handleNetworkResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$3;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    iput-object p2, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$3;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$3;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->access$100(Lnet/aihelp/data/logic/ElvaBotPresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/BaseCSFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/cs/BaseCSFragment;->updateNetCheckingStatus(Z)V

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$3;->val$result:Ljava/lang/Object;

    instance-of v2, v0, Lnet/aihelp/core/net/check/Ping$Result;

    if-eqz v2, :cond_2

    check-cast v0, Lnet/aihelp/core/net/check/Ping$Result;

    sget-object v2, Lnet/aihelp/common/Const;->sCheckResultListener:Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;

    if-eqz v2, :cond_0

    sget-object v2, Lnet/aihelp/common/Const;->sCheckResultListener:Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;

    iget-object v3, v0, Lnet/aihelp/core/net/check/Ping$Result;->result:Ljava/lang/String;

    invoke-interface {v2, v3}, Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;->onNetworkCheckResult(Ljava/lang/String;)V

    :cond_0
    iget v2, v0, Lnet/aihelp/core/net/check/Ping$Result;->sent:I

    if-lez v2, :cond_1

    iget v2, v0, Lnet/aihelp/core/net/check/Ping$Result;->avg:F

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$3;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->access$200(Lnet/aihelp/data/logic/ElvaBotPresenter;)V

    return-void

    :cond_1
    iget-object v2, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$3;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v0, v0, Lnet/aihelp/core/net/check/Ping$Result;->result:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lnet/aihelp/data/logic/ElvaBotPresenter;->access$300(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$3;->val$result:Ljava/lang/Object;

    instance-of v2, v0, Lnet/aihelp/core/net/check/TraceRoute$Result;

    if-eqz v2, :cond_4

    check-cast v0, Lnet/aihelp/core/net/check/TraceRoute$Result;

    sget-object v2, Lnet/aihelp/common/Const;->sCheckResultListener:Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;

    if-eqz v2, :cond_3

    sget-object v2, Lnet/aihelp/common/Const;->sCheckResultListener:Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;

    invoke-virtual {v0}, Lnet/aihelp/core/net/check/TraceRoute$Result;->content()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;->onNetworkCheckResult(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$3;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0}, Lnet/aihelp/core/net/check/TraceRoute$Result;->content()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->access$300(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method
