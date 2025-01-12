.class public Lnet/aihelp/data/logic/OperatePresenter;
.super Lnet/aihelp/core/mvp/AbsPresenter;
.source "OperatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/mvp/AbsPresenter<",
        "Lnet/aihelp/ui/op/OperateContentFragment;",
        "Lnet/aihelp/core/mvp/IRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/mvp/AbsPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public goFetchOperateContent(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/localize/data/OperateHelper;->getArticleById(Ljava/lang/String;)Lnet/aihelp/data/model/op/OperateArticle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/OperatePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v0, Lnet/aihelp/ui/op/OperateContentFragment;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/op/OperateContentFragment;->refreshOperateContent(Lnet/aihelp/data/model/op/OperateArticle;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/data/logic/OperatePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/op/OperateContentFragment;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/op/OperateContentFragment;->showEmpty([I)V

    :goto_0
    return-void
.end method

.method public haveUnreadArticles()Z
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/OperateHelper;->haveUnreadArticles()Z

    move-result v0

    return v0
.end method

.method public shouldShowEvaluateFooter(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/localize/data/OperateHelper;->shouldShowArticleFooter(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
