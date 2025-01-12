.class public Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "AdminTextAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private convertElvaBotTextMsg(Landroid/view/ViewGroup;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 3

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getMsg(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotUrl()Lnet/aihelp/data/model/cs/storyline/BotUrl;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getUrl(Lnet/aihelp/data/model/cs/storyline/BotUrl;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasFormUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-virtual {p0, p2, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getFormUrl(Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasOrderInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-virtual {p0, p2, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getBotOrderInfo(Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasAction()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-virtual {p0, v1, v0, v2}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getAction(ILjava/lang/String;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private convertSupportTextMsg(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/ViewGroup;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
    .locals 4

    const-string v0, "aihelp_tv_nickname"

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lnet/aihelp/data/model/cs/ConversationMsg;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3}, Lnet/aihelp/data/model/cs/ConversationMsg;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p3}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgContent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getMsg(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p3

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p3, p4}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->prepareTranslate(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;I)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private prepareTranslate(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;I)V
    .locals 7

    sget-boolean p3, Lnet/aihelp/common/Const;->TOGGLE_TRANSLATE_CS_MESSAGE:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result p3

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->mContext:Landroid/content/Context;

    const-wide v1, 0x4064a00000000000L    # 165.0

    invoke-virtual {p0, v0, v1, v2}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "aihelp_iv_translate"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    new-instance v6, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/widget/TextView;Lnet/aihelp/core/ui/adapter/ViewHolder;)V

    invoke-virtual {p1, p3, v6}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lnet/aihelp/core/ui/adapter/ViewHolder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
    .locals 6

    const-string v0, "aihelp_admin_message_container"

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->isCurrentRtl:Z

    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getAdminBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    instance-of v1, p2, Lnet/aihelp/data/model/cs/ElvaBotMsg;

    const-string v2, "aihelp_iv_portrait"

    invoke-virtual {p0, v2}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    sget-object v3, Lnet/aihelp/common/CustomConfig$CustomerService;->csBotSupportPortrait:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lnet/aihelp/common/CustomConfig$CustomerService;->csManualSupportPortrait:Ljava/lang/String;

    :goto_0
    sget-boolean v4, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    if-eqz v1, :cond_1

    const-string v5, "aihelp_svg_portrait_robot"

    goto :goto_1

    :cond_1
    const-string v5, "aihelp_svg_portrait_admin"

    :goto_1
    invoke-static {v2, v3, v4, v5}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v2, "aihelp_iv_translate"

    if-eqz v1, :cond_2

    check-cast p2, Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {p0, v0, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->convertElvaBotTextMsg(Landroid/view/ViewGroup;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-virtual {p0, v2}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lnet/aihelp/common/Const;->TOGGLE_TRANSLATE_CS_MESSAGE:Z

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->convertSupportTextMsg(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/ViewGroup;Lnet/aihelp/data/model/cs/ConversationMsg;I)V

    :goto_2
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_admin"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
