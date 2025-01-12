.class public Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "AdminImageAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
    .locals 3

    const-string p3, "aihelp_iv_portrait"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csManualSupportPortrait:Ljava/lang/String;

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v2, "aihelp_svg_portrait_admin"

    invoke-static {p3, v0, v1, v2}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p3, "aihelp_tv_nickname"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v1, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string p3, "aihelp_iv_holder"

    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3, p2}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->loadIntoImageView(Landroid/content/Context;Lnet/aihelp/data/model/cs/ConversationMsg;)V

    new-instance p3, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter$1;

    invoke-direct {p3, p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;Lnet/aihelp/ui/widget/AIHelpLoadingImageView;Lnet/aihelp/data/model/cs/ConversationMsg;)V

    invoke-virtual {p1, p3}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_admin_image"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;->isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
