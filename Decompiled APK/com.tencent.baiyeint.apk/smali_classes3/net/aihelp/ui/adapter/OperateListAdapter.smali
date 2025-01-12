.class public Lnet/aihelp/ui/adapter/OperateListAdapter;
.super Lnet/aihelp/core/ui/adapter/CommonAdapter;
.source "OperateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/adapter/CommonAdapter<",
        "Lnet/aihelp/data/model/op/OperateArticle;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/aihelp/ui/adapter/OperateListAdapter;->mListener:Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/OperateListAdapter;)Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/OperateListAdapter;->mListener:Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lnet/aihelp/data/model/op/OperateArticle;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/OperateListAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/op/OperateArticle;I)V

    return-void
.end method

.method protected convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/op/OperateArticle;I)V
    .locals 4

    invoke-virtual {p2}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object v0

    const-string v1, "aihelp_iv_portrait"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;)V

    const-string v0, "aihelp_tv_op_title"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "aihelp_tv_time"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqUpdateDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "aihelp_iv_arrow"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    const-string v2, "aihelp_svg_ic_arrow_right"

    invoke-static {v0, v2, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const-string v0, "aihelp_v_unread_status"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lnet/aihelp/common/Const;->sOperationUnreadListener:Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {p2}, Lnet/aihelp/data/model/op/OperateArticle;->getFaqMainId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/data/localize/data/OperateHelper;->isArticleUnread(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lnet/aihelp/ui/adapter/OperateListAdapter$1;

    invoke-direct {v0, p0, p2, p3}, Lnet/aihelp/ui/adapter/OperateListAdapter$1;-><init>(Lnet/aihelp/ui/adapter/OperateListAdapter;Lnet/aihelp/data/model/op/OperateArticle;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected itemLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_item_op_list"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
