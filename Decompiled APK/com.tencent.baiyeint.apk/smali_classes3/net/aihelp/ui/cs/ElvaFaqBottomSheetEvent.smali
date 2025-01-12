.class public Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;
.super Ljava/lang/Object;
.source "ElvaFaqBottomSheetEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;
    }
.end annotation


# instance fields
.field private faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

.field private mListener:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;

.field private mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

.field private rootLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_elva_faq"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setGravity(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->fromBottom(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$1;-><init>(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthAndHeight(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setHeightByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_rl_root"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->rootLayout:Landroid/widget/RelativeLayout;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_iv_back"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "aihelp_svg_ic_back"

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v2, "aihelp_iv_close"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "aihelp_svg_ic_close_dialog"

    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v2, "aihelp_web_view"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/webkit/AIHelpWebView;

    iput-object v1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v2, "aihelp_progress_bar"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    new-instance v2, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;-><init>(Landroid/content/Context;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    new-instance v3, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$2;

    invoke-direct {v3, p0, v0}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$2;-><init>(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->setUrlLoadingListener(Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0, v2}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    invoke-direct {v0, p1, v1}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;-><init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setBackgroundColor(I)V

    invoke-direct {p0, p2}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->prepareEvaluateView(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;)Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mListener:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;

    return-object p0
.end method

.method private onBackPressed(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->goBack()V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private prepareEvaluateView(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_evaluate_bot_faq"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqMainId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setMainId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setContentId(Ljava/lang/String;)V

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForBotEnable:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    const/16 v3, 0x12c

    if-eq v1, v3, :cond_0

    const/16 v3, 0x190

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setEvaluateState(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setEvaluateState(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setEvaluateState(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setEvaluateState(I)V

    :goto_0
    new-instance v1, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$3;-><init>(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->setOnAIHelpEvaluateViewCallback(Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_close"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_back"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->onBackPressed(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onEventComing(Lnet/aihelp/data/event/OrientationChangeEvent;)V
    .locals 0
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnBotFaqInteractionCallback(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mListener:Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public show(Lnet/aihelp/data/model/faq/FaqContentEntity;)V
    .locals 7

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    :cond_0
    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqContent()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual/range {v1 .. v6}, Lnet/aihelp/ui/webkit/AIHelpWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
