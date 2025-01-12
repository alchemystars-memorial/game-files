.class public Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "AdminRichTextAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private convertElvaBotTextMsg(Landroid/view/ViewGroup;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    return-void
.end method

.method private convertSupportTextMsg(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/ViewGroup;Lnet/aihelp/data/model/cs/ConversationMsg;)V
    .locals 3

    const-string v0, "aihelp_tv_nickname"

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lnet/aihelp/data/model/cs/ConversationMsg;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Lnet/aihelp/data/model/cs/ConversationMsg;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setTextColor(II)Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-virtual {p3}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->getRichTextMsg(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
    .locals 4

    const-string p3, "aihelp_admin_message_container"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->isCurrentRtl:Z

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->getAdminBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v0, "aihelp_iv_portrait"

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CustomerService;->csManualSupportPortrait:Ljava/lang/String;

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v3, "aihelp_svg_portrait_admin"

    invoke-static {v0, v1, v2, v3}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "aihelp_tv_nickname"

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getNickname()Ljava/lang/String;

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
    invoke-direct {p0, p1, p3, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->convertSupportTextMsg(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/ViewGroup;Lnet/aihelp/data/model/cs/ConversationMsg;)V

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

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
