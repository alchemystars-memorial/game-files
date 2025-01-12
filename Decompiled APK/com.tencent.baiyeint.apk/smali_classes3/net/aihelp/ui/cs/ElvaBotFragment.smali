.class public Lnet/aihelp/ui/cs/ElvaBotFragment;
.super Lnet/aihelp/ui/cs/BaseCSFragment;
.source "ElvaBotFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/ui/cs/BaseCSFragment<",
        "Lnet/aihelp/data/logic/ElvaBotPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private ivChecking:Landroidx/appcompat/widget/AppCompatImageView;

.field private llChecking:Landroid/widget/LinearLayout;

.field private mFaqAlertAdapter:Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

.field private resolveType:I

.field private rvFaqHintList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->resolveType:I

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mFaqAlertAdapter:Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/cs/ElvaBotFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->whenUserSay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$1200(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lnet/aihelp/ui/cs/ElvaBotFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->rvFaqHintList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1402(Lnet/aihelp/ui/cs/ElvaBotFragment;I)I
    .locals 0

    iput p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->resolveType:I

    return p1
.end method

.method static synthetic access$1500(Lnet/aihelp/ui/cs/ElvaBotFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->llChecking:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$600(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$700(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$800(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->showAdviceAlert(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    return-void
.end method

.method static synthetic access$900(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/ElvaBotFragment;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;-><init>()V

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showAdviceAlert(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 8

    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_advice"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    const-string v1, "aihelp_et_feedback"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "aihelp_tv_title"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "aihelp_tv_cancel"

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "aihelp_tv_confirm"

    invoke-static {v5}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "aihelp_chat_hint"

    invoke-static {v7}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v7, "aihelp_faq_feedback"

    invoke-static {v7}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "aihelp_no"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "aihelp_yes"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lnet/aihelp/ui/cs/ElvaBotFragment$3;

    invoke-direct {v2, p0, v6}, Lnet/aihelp/ui/cs/ElvaBotFragment$3;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lnet/aihelp/ui/cs/ElvaBotFragment$4;

    invoke-direct {v3, p0, v0}, Lnet/aihelp/ui/cs/ElvaBotFragment$4;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v2, v3}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    invoke-static {v5}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lnet/aihelp/ui/cs/ElvaBotFragment$5;

    invoke-direct {v3, p0, v1, p1, v0}, Lnet/aihelp/ui/cs/ElvaBotFragment$5;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Landroid/widget/EditText;Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v2, v3}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    return-void
.end method

.method private showNetworkInterruptDialog()V
    .locals 7

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_interrupt_net_check"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    const-string v1, "aihelp_tv_title"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "aihelp_tv_cancel"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "aihelp_tv_confirm"

    invoke-static {v4}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "aihelp_network_check_in_progress"

    invoke-static {v6}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "aihelp_no"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "aihelp_yes"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lnet/aihelp/ui/cs/ElvaBotFragment$9;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/ui/cs/ElvaBotFragment$9;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    invoke-static {v4}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lnet/aihelp/ui/cs/ElvaBotFragment$10;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/ui/cs/ElvaBotFragment$10;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "Activity finished when network dialog is about to show."

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private whenUserSay(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lnet/aihelp/ui/helper/ConversationHelper;->getUserTextMsg(ZLjava/lang/String;)Lnet/aihelp/data/model/cs/ConversationMsg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->updateChatList(Lnet/aihelp/data/model/cs/ConversationMsg;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mHandler:Lnet/aihelp/core/ui/BaseFragment$MyHandler;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/BaseFragment$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_elva_bot"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLoadingTargetViewId()I
    .locals 1

    const-string v0, "aihelp_elva_root"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleMsg(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/aihelp/ui/helper/ConversationHelper;->getBotReply(Ljava/lang/String;)Lnet/aihelp/data/model/cs/ElvaBotMsg;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isBotStupid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v1, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->askForAnswer(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    new-instance v1, Lnet/aihelp/ui/cs/ElvaBotFragment$7;

    invoke-direct {v1, p0, v0}, Lnet/aihelp/ui/cs/ElvaBotFragment$7;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    const-wide/16 v2, 0x320

    invoke-virtual {p1, v1, v2, v3}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->initEventAndData(Landroid/view/View;)V

    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenBotVisible()V

    const-string p1, "aihelp_ll_net_checking"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->llChecking:Landroid/widget/LinearLayout;

    const-string p1, "aihelp_iv_checking"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->ivChecking:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p1, "aihelp_rv_faq_alert"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->rvFaqHintList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/ElvaBotFragment$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/ElvaBotFragment$1;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;)V

    invoke-direct {p1, v0, v1}, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mFaqAlertAdapter:Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->rvFaqHintList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    new-instance v0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/cs/ElvaBotFragment$2;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->setOnClickedListener(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    iget-boolean p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->isOperateBot:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {p1, v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->prepareMqttConnection(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    :cond_0
    return-void
.end method

.method public isNetCheckingInProgress()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->llChecking:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public markSupportActionUnread()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setHasUnreadMsg(Z)V

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v2, 0x3e9

    const/16 v3, 0x3ef

    invoke-direct {v1, v2, v3}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->isNetCheckingInProgress()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->showNetworkInterruptDialog()V

    return v1

    :cond_0
    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isBotResolveQueryEnable:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-static {}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->getInstance()Lnet/aihelp/ui/helper/EvaluateNewHelper;

    move-result-object v0

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lnet/aihelp/ui/cs/ElvaBotFragment$8;

    invoke-direct {v4, p0}, Lnet/aihelp/ui/cs/ElvaBotFragment$8;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->askAboutIssueResolvedStatus(Landroid/content/Context;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmResolveStatusListener;)V

    return v1

    :cond_1
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_btn_send"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenSendButtonClicked()V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->etInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->whenUserSay(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    const/4 v1, 0x0

    iget v2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->resolveType:I

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/data/logic/ElvaBotPresenter;->logoutMqtt(ZI)V

    :cond_0
    invoke-super {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->onDestroy()V

    return-void
.end method

.method public onFormSubmitted()V
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/PageHoppingEvent;

    const/16 v2, 0x3f0

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/PageHoppingEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMqttLogin(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->onMqttLogin(Ljava/util/List;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketActive()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketRejected()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/event/PageHoppingEvent;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1}, Lnet/aihelp/data/event/PageHoppingEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onNetworkStateChanged(Lnet/aihelp/core/net/monitor/NetworkState;)V
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/monitor/NetworkState;->NONE:Lnet/aihelp/core/net/monitor/NetworkState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->onMqttFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {p1, v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->prepareMqttConnection(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->onResume()V

    iget-boolean v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->isOperateBot:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->prepareMqttConnection(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isFormSubmitted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/PageHoppingEvent;

    const/16 v2, 0x3f0

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/PageHoppingEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->isAlwaysShowSupportInElva:Z

    invoke-static {v0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->updateElvaSupportActionStatus(Z)V

    :goto_0
    return-void
.end method

.method protected onTextChange(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->rvFaqHintList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mFaqAlertAdapter:Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    invoke-virtual {p1}, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->clear()V

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/ElvaBotFragment$6;

    invoke-direct {v1, p0, p1, v0}, Lnet/aihelp/ui/cs/ElvaBotFragment$6;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Ljava/lang/CharSequence;Lnet/aihelp/core/util/concurrent/ApiExecutor;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChatList(Lnet/aihelp/data/model/cs/ConversationMsg;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->updateChatList(Lnet/aihelp/data/model/cs/ConversationMsg;)V

    instance-of v0, p1, Lnet/aihelp/data/model/cs/ElvaBotMsg;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/aihelp/data/model/cs/ElvaBotMsg;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->handleBotMsg(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    :cond_0
    return-void
.end method

.method public updateFAQFeedback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    invoke-virtual {v1, p3}, Lnet/aihelp/data/model/cs/ConversationMsg;->setFaqTicketId(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateFAQFeedback(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    const/16 v2, 0xc8

    goto :goto_1

    :cond_0
    const/16 v2, 0x12c

    :goto_1
    invoke-virtual {v1, v2}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    invoke-virtual {v1, p3}, Lnet/aihelp/data/model/cs/ConversationMsg;->setFaqTicketId(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateNetCheckingStatus(Z)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->llChecking:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->ivChecking:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "aihelp_tv_net_checking"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "aihelp_network_checking"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->llChecking:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment;->ivChecking:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
