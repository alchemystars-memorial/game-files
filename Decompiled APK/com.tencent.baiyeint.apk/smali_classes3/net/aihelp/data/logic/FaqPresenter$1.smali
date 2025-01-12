.class Lnet/aihelp/data/logic/FaqPresenter$1;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "FaqPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/FaqPresenter;->fetchFaqDataSourceOnDemand(Ljava/lang/String;)V
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
.field final synthetic this$0:Lnet/aihelp/data/logic/FaqPresenter;

.field final synthetic val$sectionOrFaqId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$1;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    iput-object p2, p0, Lnet/aihelp/data/logic/FaqPresenter$1;->val$sectionOrFaqId:Ljava/lang/String;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAsyncReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/FaqPresenter$1;->onAsyncReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAsyncReqSuccess(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    new-instance v0, Lnet/aihelp/data/logic/FaqPresenter$1$1;

    invoke-direct {v0, p0}, Lnet/aihelp/data/logic/FaqPresenter$1$1;-><init>(Lnet/aihelp/data/logic/FaqPresenter$1;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareDataSource(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$1;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    iget-object p2, p0, Lnet/aihelp/data/logic/FaqPresenter$1;->val$sectionOrFaqId:Ljava/lang/String;

    invoke-static {p1, p2}, Lnet/aihelp/data/logic/FaqPresenter;->access$100(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V

    return-void
.end method
