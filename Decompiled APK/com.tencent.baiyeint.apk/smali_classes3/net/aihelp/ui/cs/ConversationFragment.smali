.class public Lnet/aihelp/ui/cs/ConversationFragment;
.super Lnet/aihelp/ui/cs/BaseCSFragment;
.source "ConversationFragment.java"

# interfaces
.implements Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/ui/cs/BaseCSFragment<",
        "Lnet/aihelp/data/logic/ConversationPresenter;",
        ">;",
        "Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;"
    }
.end annotation


# instance fields
.field private isModeConversation:Z

.field private isTicketAlreadyFinished:Z

.field private llInput:Landroid/widget/LinearLayout;

.field private llRate:Landroid/widget/LinearLayout;

.field private mCurrentPage:I

.field private mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$1000(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lnet/aihelp/ui/cs/ConversationFragment;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/aihelp/ui/cs/ConversationFragment;->sendDelayTimeoutMsg(JJ)V

    return-void
.end method

.method static synthetic access$1200(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$1400(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$1500(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/cs/ConversationFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isTicketAlreadyFinished:Z

    return p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/cs/ConversationFragment;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/ConversationFragment;->chatWithSupportWithTimeout(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/ui/cs/ConversationFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->uploadImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lnet/aihelp/ui/cs/ConversationFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->uploadVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lnet/aihelp/ui/cs/ConversationFragment;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mCurrentPage:I

    return p0
.end method

.method static synthetic access$700(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$800(Lnet/aihelp/ui/cs/ConversationFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->llInput:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lnet/aihelp/ui/cs/ConversationFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->llRate:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private chatWithSupportWithTimeout(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lnet/aihelp/data/logic/ConversationPresenter;->chatWithSupport(JLjava/lang/String;)V

    const-wide/16 v0, 0x14

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/aihelp/ui/cs/ConversationFragment;->sendDelayTimeoutMsg(JJ)V

    return-void
.end method

.method private getListIfDisconnectionEverHappened()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {v2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgStatus()I

    move-result v3

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getMessageWhatFromTimeStamp(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/ConversationFragment;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/cs/ConversationFragment;-><init>()V

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/cs/ConversationFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private sendDelayTimeoutMsg(JJ)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->getMessageWhatFromTimeStamp(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mHandler:Lnet/aihelp/core/ui/BaseFragment$MyHandler;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p3, v1

    invoke-virtual {p1, v0, p3, p4}, Lnet/aihelp/core/ui/BaseFragment$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private uploadImage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/core/util/luban/Luban;->with(Landroid/content/Context;)Lnet/aihelp/core/util/luban/Luban$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->load(Ljava/lang/String;)Lnet/aihelp/core/util/luban/Luban$Builder;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/ConversationFragment$8;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment$8;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/luban/Luban$Builder;->setCompressListener(Lnet/aihelp/core/util/luban/OnCompressListener;)Lnet/aihelp/core/util/luban/Luban$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->launch()V

    return-void
.end method

.method private uploadVideo(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/aihelp/ui/cs/ConversationFragment$7;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment$7;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lnet/aihelp/utils/MediaUtils;->getImageForVideo(Ljava/lang/String;Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;)V

    return-void
.end method


# virtual methods
.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "support_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isModeConversation:Z

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_conversation"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLoadingTargetViewId()I
    .locals 1

    const-string v0, "aihelp_conversation_root"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleMsg(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/aihelp/ui/cs/ConversationFragment;->updateMsgStatus(ZJ)V

    return-void
.end method

.method public hideInputAfterConversationFinished()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isTicketAlreadyFinished:Z

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->llInput:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/aihelp/ui/cs/ConversationFragment$6;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/ConversationFragment$6;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->llInput:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->initEventAndData(Landroid/view/View;)V

    const-string p1, "aihelp_ll_input"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->llInput:Landroid/widget/LinearLayout;

    const-string p1, "aihelp_ll_rate"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->llRate:Landroid/widget/LinearLayout;

    const-string p1, "aihelp_refresh_layout"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->etInput:Landroid/widget/EditText;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ConversationPresenter;->getInputDraft()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "aihelp_tv_invite_rate"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csInviteEvaluate:Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string p1, "aihelp_btn_go_rate"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "aihelp_rate_button"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    new-instance v1, Lnet/aihelp/ui/cs/ConversationFragment$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/ConversationFragment$1;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->setOnClickedListener(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CustomerService;->isHistoryChatEnable:Z

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setEnabled(Z)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v2}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setColorSchemeColors([I)V

    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isHistoryChatEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    new-instance v1, Lnet/aihelp/ui/cs/ConversationFragment$2;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/ConversationFragment$2;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setOnRefreshListener(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;)V

    :cond_0
    const-string v0, "aihelp_iv_attach"

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/ConversationFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "aihelp_svg_ic_attach"

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v3}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setHasUnreadMsg(Z)V

    iget-boolean p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isOperateHuman:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/ConversationPresenter;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {p1, v0}, Lnet/aihelp/data/logic/ConversationPresenter;->prepareMqttConnection(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    :cond_1
    return-void
.end method

.method public launchPicker(Lnet/aihelp/core/util/permission/Permission$Result;Lnet/aihelp/core/util/permission/IPermissionCallback;)V
    .locals 4
    .annotation runtime Lnet/aihelp/core/util/permission/Permission;
        requestCode = 0x3e8
    .end annotation

    sget-object v0, Lnet/aihelp/ui/cs/ConversationFragment$10;->$SwitchMap$net$aihelp$core$util$permission$Permission$Result:[I

    invoke-virtual {p1}, Lnet/aihelp/core/util/permission/Permission$Result;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const-string v1, "aihelp_permission_denied"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/aihelp/ui/helper/AttachmentPicker;->getInstance()Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/ui/helper/AttachmentPicker;->setPickerHost(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p1

    invoke-virtual {p1, v2}, Lnet/aihelp/ui/helper/AttachmentPicker;->launchImagePicker(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "aihelp_permission_ignored"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aihelp_permission_settings"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lnet/aihelp/ui/cs/ConversationFragment$4;

    invoke-direct {v3, p0, p2}, Lnet/aihelp/ui/cs/ConversationFragment$4;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;Lnet/aihelp/core/util/permission/IPermissionCallback;)V

    invoke-static {p1, v0, v1, v2, v3}, Lnet/aihelp/utils/ToastUtil;->showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aihelp_yes"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lnet/aihelp/ui/cs/ConversationFragment$3;

    invoke-direct {v3, p0, p2}, Lnet/aihelp/ui/cs/ConversationFragment$3;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;Lnet/aihelp/core/util/permission/IPermissionCallback;)V

    invoke-static {p1, v0, v1, v2, v3}, Lnet/aihelp/utils/ToastUtil;->showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lnet/aihelp/utils/ToastUtil;->showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lnet/aihelp/ui/helper/AttachmentPicker;->getInstance()Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/ui/helper/AttachmentPicker;->setPickerHost(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/helper/AttachmentPicker;->launchImagePicker(Z)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/BaseCSFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lnet/aihelp/ui/helper/AttachmentPicker;->getInstance()Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lnet/aihelp/ui/helper/AttachmentPicker;->onAttachmentPickRequestResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_btn_send"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ConversationPresenter;->validateNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenSendButtonClicked()V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v1, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {v1}, Lnet/aihelp/data/logic/ConversationPresenter;->clearInputDraft()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lnet/aihelp/ui/helper/ConversationHelper;->getUserTextMsg(ZLjava/lang/String;)Lnet/aihelp/data/model/cs/ConversationMsg;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/aihelp/ui/cs/ConversationFragment;->updateChatList(Lnet/aihelp/data/model/cs/ConversationMsg;)V

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lnet/aihelp/ui/cs/ConversationFragment;->chatWithSupportWithTimeout(JLjava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_attach"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ConversationPresenter;->validateNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->getInstance()Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->setHost(Ljava/lang/Object;)Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->setRequestCode(I)Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->setRequestPermission(Ljava/lang/String;)Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->request()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_btn_go_rate"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-static {}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->getInstance()Lnet/aihelp/ui/helper/EvaluateNewHelper;

    move-result-object p1

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/ConversationFragment$9;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/ConversationFragment$9;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;)V

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->show(Landroid/content/Context;Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->etInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/ConversationPresenter;->saveInputDraftIfNeeded(Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isOperateHuman:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isModeConversation:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/ConversationPresenter;->logoutMqtt(Z)V

    :cond_1
    invoke-super {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->onDestroy()V

    return-void
.end method

.method public onEventComing(Lnet/aihelp/data/event/PrepareMessageTimeStampEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->onEventComing(Lnet/aihelp/data/event/PrepareMessageTimeStampEvent;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/ConversationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/data/logic/ConversationPresenter;->updateCachedUnreadMessageCount(Z)V

    return-void
.end method

.method public onFormSubmitted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/helper/ConversationHelper;->getUserFormMsgList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->update(Ljava/util/List;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onLastConversationRetrieved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mCurrentPage:I

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->insertHistoryConversation(Ljava/util/List;)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lnet/aihelp/ui/cs/ConversationFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    const/16 v0, -0x64

    invoke-virtual {p1, v1, v0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public onMqttLogin(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getListIfDisconnectionEverHappened()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lnet/aihelp/ui/cs/ConversationFragment$5;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/ConversationFragment$5;-><init>(Lnet/aihelp/ui/cs/ConversationFragment;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgStatus()I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v2, Lnet/aihelp/data/logic/ConversationPresenter;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lnet/aihelp/data/logic/ConversationPresenter;->uploadImage(Ljava/io/File;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v2, Lnet/aihelp/data/logic/ConversationPresenter;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lnet/aihelp/data/logic/ConversationPresenter;->uploadVideo(Ljava/io/File;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lnet/aihelp/ui/cs/ConversationFragment;->chatWithSupportWithTimeout(JLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mCurrentPage:I

    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->onMqttLogin(Ljava/util/List;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketRejected()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketFinished()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->hideInputAfterConversationFinished()V

    :cond_5
    return-void
.end method

.method public onNetworkStateChanged(Lnet/aihelp/core/net/monitor/NetworkState;)V
    .locals 1
    .annotation runtime Lnet/aihelp/core/net/monitor/NetworkMonitor;
    .end annotation

    sget-object v0, Lnet/aihelp/core/net/monitor/NetworkState;->NONE:Lnet/aihelp/core/net/monitor/NetworkState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->onMqttFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isModeConversation:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/ConversationPresenter;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {p1, v0}, Lnet/aihelp/data/logic/ConversationPresenter;->prepareMqttConnection(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPickFailure(ILjava/lang/Long;)V
    .locals 7

    const/4 v0, -0x5

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "aihelp_media_upload_err_size"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v0, 0x100000

    :try_start_0
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", < "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Failed to get specific resource"

    invoke-static {p1, p2}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPickSuccess(Lnet/aihelp/ui/helper/AttachmentPickerFile;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean p2, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isTicketAlreadyFinished:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lnet/aihelp/ui/helper/AttachmentPickerFile;->filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Failed to get file path."

    invoke-static {p1, v0, p2}, Lnet/aihelp/utils/ToastUtil;->makeText(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string p2, "^/.+\\.(png|jpg|jpeg|PNG|JPG|JPEG)$"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->uploadImage(Ljava/lang/String;)V

    :cond_2
    const-string p2, "^/.+\\.(mp4|MP4)$"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->uploadVideo(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->getInstance()Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object p1

    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    aget p2, p3, v0

    if-nez p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->onRequestPermissionsResult(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->onResume()V

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->isOperateHuman:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/ConversationPresenter;->prepareMqttConnection(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isFormSubmitted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setFormSubmitStatus(Z)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public updateMsgStatus(ZJ)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mHandler:Lnet/aihelp/core/ui/BaseFragment$MyHandler;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/aihelp/ui/cs/ConversationFragment;->getMessageWhatFromTimeStamp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/BaseFragment$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x3eb

    goto :goto_1

    :cond_0
    const/16 p1, 0x3ea

    :goto_1
    invoke-virtual {v1, p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public withdrawMsg(J)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {v2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {p1, v1}, Lnet/aihelp/data/logic/ConversationPresenter;->updateCachedUnreadMessageCount(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
