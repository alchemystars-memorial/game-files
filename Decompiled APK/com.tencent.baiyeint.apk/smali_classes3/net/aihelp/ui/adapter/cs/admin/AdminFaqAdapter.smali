.class public Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "AdminFaqAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
    .locals 7

    instance-of p3, p2, Lnet/aihelp/data/model/cs/ElvaBotMsg;

    if-eqz p3, :cond_9

    check-cast p2, Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasUrl()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotUrl()Lnet/aihelp/data/model/cs/storyline/BotUrl;

    move-result-object p3

    invoke-virtual {p3}, Lnet/aihelp/data/model/cs/storyline/BotUrl;->getUrlAddress()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "?id="

    invoke-static {p3, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "&isCustom=1"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setFaqContentId(Ljava/lang/String;)V

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$1;

    invoke-direct {v1, p0, p3, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;Ljava/lang/String;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    :cond_0
    const-string p3, "aihelp_admin_message_container"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->isCurrentRtl:Z

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getAdminBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-virtual {p0, p2, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getFAQLayout(Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p3, "aihelp_iv_portrait"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csManualSupportPortrait:Ljava/lang/String;

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v2, "aihelp_svg_portrait_robot"

    invoke-static {p3, v0, v1, v2}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p3, "aihelp_rl_helpful"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForBotEnable:Z

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p1, p3, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    const-string p3, "aihelp_iv_faq_unhelpful"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v0, "aihelp_svg_ic_un_helpful"

    invoke-static {p3, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$2;

    invoke-direct {v0, p0, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$2;-><init>(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p3, "aihelp_iv_faq_helpful"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v0, "aihelp_svg_ic_helpful"

    invoke-static {p3, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$3;

    invoke-direct {v0, p0, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$3;-><init>(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p3, "aihelp_ll_feedback"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForBotEnable:Z

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v5, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v0, v5, v6}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-static {v0, v4}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p3, "aihelp_tv_thanks"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    const/16 v4, 0x190

    const/16 v5, 0x12c

    if-eq v0, v5, :cond_4

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->commonPositiveFeedbackHint:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;F)V

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->commonNegativeFeedbackHint:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;F)V

    :goto_3
    const-string p3, "aihelp_tv_advice"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "aihelp_faq_feedback_suggest"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->isFaqUnhelpfulFeedbackEnable:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result v1

    if-eq v1, v5, :cond_5

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result v1

    if-ne v1, v4, :cond_6

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    invoke-virtual {p1, p3, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result p1

    if-ne p1, v5, :cond_7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getMsgStatus()I

    move-result p1

    if-ne p1, v4, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_8
    :goto_5
    new-instance p1, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$4;

    invoke-direct {p1, p0, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$4;-><init>(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_faq"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
