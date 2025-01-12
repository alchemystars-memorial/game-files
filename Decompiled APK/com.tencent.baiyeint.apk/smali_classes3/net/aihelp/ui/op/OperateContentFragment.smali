.class public Lnet/aihelp/ui/op/OperateContentFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "OperateContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/BaseFragment<",
        "Lnet/aihelp/data/logic/OperatePresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

.field private mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

.field private mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/op/OperateContentFragment;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/op/OperateContentFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/op/OperateContentFragment;-><init>()V

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/op/OperateContentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v2, 0x3ea

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/OperatePresenter;

    const-string v1, "faq_main_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/OperatePresenter;->goFetchOperateContent(Ljava/lang/String;)V

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_operate_content"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 4

    const-string p1, "aihelp_fl_operate_root"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/op/OperateContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const-string p1, "aihelp_evaluate_op"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/op/OperateContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    iput-object p1, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    const-string p1, "aihelp_progress_bar"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/op/OperateContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    iput-object p1, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    const-string p1, "aihelp_web_view"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/op/OperateContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/webkit/AIHelpWebView;

    iput-object p1, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setBackgroundColor(I)V

    iget-object p1, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperateContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;-><init>(Landroid/content/Context;Lnet/aihelp/ui/webkit/AIHelpWebProgress;Z)V

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    iget-object v1, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-direct {v0, p0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;-><init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->goBack()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/ui/BaseFragment;->onStop()V

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->hide()V

    return-void
.end method

.method public refreshOperateContent(Lnet/aihelp/data/model/op/OperateArticle;)V
    .locals 13

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {p1}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqMainId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setMainId(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {p1}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setContentId(Ljava/lang/String;)V

    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForOperationEnable:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/OperatePresenter;

    invoke-virtual {p1}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqMainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/aihelp/data/logic/OperatePresenter;->shouldShowEvaluateFooter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {v0, v2}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setEvaluateState(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setEvaluateState(I)V

    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    new-instance v3, Lnet/aihelp/ui/op/OperateContentFragment$1;

    invoke-direct {v3, p0, p1}, Lnet/aihelp/ui/op/OperateContentFragment$1;-><init>(Lnet/aihelp/ui/op/OperateContentFragment;Lnet/aihelp/data/model/op/OperateArticle;)V

    invoke-virtual {v0, v3}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setOnAIHelpEvaluateViewCallback(Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;)V

    invoke-virtual {p1}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v3}, Lnet/aihelp/utils/Styles;->getColorRGB(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aget v7, v3, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    aget v7, v3, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v5, v8

    const-string v7, "color: rgba(%s, %s, %s, %s)"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aget v9, v3, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v6

    aget v9, v3, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v2

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const-wide v9, 0x3fd3333333333333L    # 0.3

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v5, v3, v6

    const-string v4, "<body style=\"background-color: transparent; %s\">"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<body>"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "<div style=\'font-size:14px; %s\'>"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<div style=\'font-size:14px;color:#CCCCCC;\'>"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v8, 0x0

    const/4 v12, 0x0

    const-string v10, "text/html"

    const-string v11, "utf-8"

    invoke-virtual/range {v7 .. v12}, Lnet/aihelp/ui/webkit/AIHelpWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/ui/helper/StatisticHelper;->whenOperationArticleVisible(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqContentId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/ui/helper/StatisticHelper;->whenOperationArticleVisibleWithCollectApi(Ljava/lang/String;)V

    sget-object p1, Lnet/aihelp/common/Const;->sOperationUnreadListener:Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/op/OperateContentFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/OperatePresenter;

    invoke-virtual {p1}, Lnet/aihelp/data/logic/OperatePresenter;->haveUnreadArticles()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lnet/aihelp/common/Const;->sOperationUnreadListener:Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;

    invoke-interface {p1, v6}, Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;->onOperationUnreadChanged(Z)V

    :cond_1
    return-void
.end method
