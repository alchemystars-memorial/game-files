.class public Lnet/aihelp/ui/faq/FaqContentFragment;
.super Lnet/aihelp/ui/faq/BaseFaqFragment;
.source "FaqContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/ui/faq/BaseFaqFragment<",
        "Lnet/aihelp/data/logic/FaqPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

.field private mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

.field private mServiceEntrance:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

.field private mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/ui/faq/BaseFaqFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/faq/FaqContentFragment;)Lnet/aihelp/ui/widget/AIHelpServiceEntrance;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mServiceEntrance:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    return-object p0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/faq/FaqContentFragment;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/faq/FaqContentFragment;-><init>()V

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/faq/FaqContentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "faq_main_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "search_match"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v2, Lnet/aihelp/data/logic/FaqPresenter;

    invoke-virtual {v2, v0, v1, p1}, Lnet/aihelp/data/logic/FaqPresenter;->goFetchQuestionContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_faq_content"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLoadingTargetViewId()I
    .locals 1

    const-string v0, "aihelp_faq_content"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 4

    const-string p1, "aihelp_ll_root"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const-string p1, "aihelp_progress_bar"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    const-string p1, "aihelp_evaluate_faq"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    const-string p1, "aihelp_cs_entrance"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mServiceEntrance:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    const-string p1, "aihelp_web_view"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/webkit/AIHelpWebView;

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setBackgroundColor(I)V

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;

    invoke-virtual {p0}, Lnet/aihelp/ui/faq/FaqContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;-><init>(Landroid/content/Context;Lnet/aihelp/ui/webkit/AIHelpWebProgress;Z)V

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    iget-object v1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-direct {v0, p0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;-><init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->goBack()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lnet/aihelp/ui/faq/BaseFaqFragment;->onResume()V

    invoke-virtual {p0}, Lnet/aihelp/ui/faq/FaqContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isHasUnreadMsg()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/faq/FaqContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x3e9

    const-string v2, "faq_support_moment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mServiceEntrance:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lnet/aihelp/ui/faq/BaseFaqFragment;->onStop()V

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mProgressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->hide()V

    return-void
.end method

.method public refreshQuestionContent(Lnet/aihelp/data/model/faq/FaqContentEntity;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqMainId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setMainId(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setContentId(Ljava/lang/String;)V

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForAnswerPageEnable:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v1, Lnet/aihelp/data/logic/FaqPresenter;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqMainId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/aihelp/data/logic/FaqPresenter;->shouldShowQuestionFooter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {v1, v3}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setEvaluateState(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {v1, v2}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setEvaluateState(I)V

    :goto_0
    iget-object v1, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mEvaluateView:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    new-instance v4, Lnet/aihelp/ui/faq/FaqContentFragment$1;

    invoke-direct {v4, p0, p1}, Lnet/aihelp/ui/faq/FaqContentFragment$1;-><init>(Lnet/aihelp/ui/faq/FaqContentFragment;Lnet/aihelp/data/model/faq/FaqContentEntity;)V

    invoke-virtual {v1, v4}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setOnAIHelpEvaluateViewCallback(Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;)V

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v4}, Lnet/aihelp/utils/Styles;->getColorRGB(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    aget v7, v4, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aget v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string v7, "color: rgba(%s, %s, %s, %s)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aget v9, v4, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v0

    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-wide v9, 0x3fd3333333333333L    # 0.3

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v6, v4, v0

    const-string v5, "<body style=\"background-color: transparent; %s\">"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<body>"

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "<div style=\'font-size:14px; %s\'>"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<div style=\'font-size:14px;color:#CCCCCC;\'>"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lnet/aihelp/ui/faq/FaqContentFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    invoke-virtual/range {v3 .. v8}, Lnet/aihelp/ui/webkit/AIHelpWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqContentId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/aihelp/ui/helper/StatisticHelper;->whenFAQDetailVisible(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array p1, v0, [I

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->showEmpty([I)V

    :goto_1
    return-void
.end method
