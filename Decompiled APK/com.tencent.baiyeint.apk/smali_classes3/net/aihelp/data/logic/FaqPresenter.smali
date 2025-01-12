.class public Lnet/aihelp/data/logic/FaqPresenter;
.super Lnet/aihelp/core/mvp/AbsPresenter;
.source "FaqPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/mvp/AbsPresenter<",
        "Lnet/aihelp/ui/faq/BaseFaqFragment;",
        "Lnet/aihelp/data/local/FaqRepository;",
        ">;"
    }
.end annotation


# static fields
.field private static final sApiExecutor:Lnet/aihelp/core/util/concurrent/ApiExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    sput-object v0, Lnet/aihelp/data/logic/FaqPresenter;->sApiExecutor:Lnet/aihelp/core/util/concurrent/ApiExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/mvp/AbsPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/FaqPresenter;->refreshFaqs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/FaqPresenter;->getFaqFromApiAfterLocalizeFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IRepository;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$500()Lnet/aihelp/core/util/concurrent/ApiExecutor;
    .locals 1

    sget-object v0, Lnet/aihelp/data/logic/FaqPresenter;->sApiExecutor:Lnet/aihelp/core/util/concurrent/ApiExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/utils/SpUtil;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    return-object p0
.end method

.method static synthetic access$700(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$800(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method private fetchFaqDataSourceOnDemand(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/data/logic/FaqPresenter;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v0, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/BaseFaqFragment;->showLoading()V

    const/16 v0, 0x3e9

    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getUrl(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".+\\.(json)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v1

    new-instance v2, Lnet/aihelp/data/logic/FaqPresenter$1;

    invoke-direct {v2, p0, p1}, Lnet/aihelp/data/logic/FaqPresenter$1;-><init>(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestDownloadFile(ILnet/aihelp/core/net/http/callback/BaseCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/BaseFaqFragment;->showNetError()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getFaqFromApiAfterLocalizeFailed(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/aihelp/common/API;->FAQ_URL:Ljava/lang/String;

    new-instance v1, Lnet/aihelp/data/logic/FaqPresenter$2;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/data/logic/FaqPresenter$2;-><init>(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/aihelp/data/logic/FaqPresenter;->get(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method

.method private refreshFaqs(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v0, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/BaseFaqFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v0, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/BaseFaqFragment;->restoreViewState()V

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    instance-of v0, v0, Lnet/aihelp/ui/faq/FaqHomeFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    instance-of v0, v0, Lnet/aihelp/ui/faq/FaqListFragment;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/FaqPresenter;->goFetchFAQDataSource(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    instance-of v0, v0, Lnet/aihelp/ui/faq/FaqContentFragment;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lnet/aihelp/data/logic/FaqPresenter;->goFetchQuestionContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public goFetchFAQDataSource(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/data/localize/data/FaqHelper;->isFaqDataAlreadyPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/FaqHelper;->getRootSections()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v0, Lnet/aihelp/data/local/FaqRepository;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/local/FaqRepository;->checkWhetherHasSubSection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/localize/data/FaqHelper;->getSubSections(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/localize/data/FaqHelper;->getQuestionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-virtual {v1, v0, p1}, Lnet/aihelp/ui/faq/BaseFaqFragment;->refreshList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/FaqPresenter;->fetchFaqDataSourceOnDemand(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public goFetchQuestionContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lnet/aihelp/data/localize/data/FaqHelper;->isFaqDataAlreadyPrepared()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/data/localize/data/FaqHelper;->getFaqById(Ljava/lang/String;Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lnet/aihelp/data/logic/FaqPresenter;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, p3}, Lnet/aihelp/utils/Styles;->getFAQWithHighlightedSearchTerms(Landroid/content/Context;Lnet/aihelp/data/model/faq/FaqContentEntity;Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;

    move-result-object p2

    iget-object p3, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p3, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-virtual {p3}, Lnet/aihelp/ui/faq/BaseFaqFragment;->isDetached()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p3, Lnet/aihelp/ui/faq/BaseFaqFragment;

    if-eqz p2, :cond_1

    move-object p1, p2

    :cond_1
    invoke-virtual {p3, p1}, Lnet/aihelp/ui/faq/BaseFaqFragment;->refreshQuestionContent(Lnet/aihelp/data/model/faq/FaqContentEntity;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    const/4 p2, 0x0

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/faq/BaseFaqFragment;->showEmpty([I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lnet/aihelp/data/logic/FaqPresenter;->fetchFaqDataSourceOnDemand(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public goQueryFAQList(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/aihelp/data/logic/FaqPresenter;->sApiExecutor:Lnet/aihelp/core/util/concurrent/ApiExecutor;

    new-instance v1, Lnet/aihelp/data/logic/FaqPresenter$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/data/logic/FaqPresenter$3;-><init>(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasSubSection(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v0, Lnet/aihelp/data/local/FaqRepository;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/local/FaqRepository;->checkWhetherHasSubSection(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public logoutFaqMqtt()V
    .locals 1

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->onFaqDestroy()V

    return-void
.end method

.method public prepareFAQNotification()V
    .locals 3

    sget-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_OPEN_FAQ_NOTIFICATION:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/data/logic/MqttCallbackImpl;->getInstance()Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/data/logic/FaqPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->updateHostView(Landroidx/fragment/app/Fragment;)V

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->prepare(ILnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    :cond_0
    sget-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_OPEN_FAQ_NOTIFICATION:Z

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lnet/aihelp/common/API;->FETCH_NEW_MSG:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/logic/FaqPresenter$4;

    invoke-direct {v2, p0}, Lnet/aihelp/data/logic/FaqPresenter$4;-><init>(Lnet/aihelp/data/logic/FaqPresenter;)V

    invoke-virtual {p0, v1, v0, v2}, Lnet/aihelp/data/logic/FaqPresenter;->get(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldShowQuestionFooter(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v0, Lnet/aihelp/data/local/FaqRepository;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/local/FaqRepository;->shouldShowQuestionFooter(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
