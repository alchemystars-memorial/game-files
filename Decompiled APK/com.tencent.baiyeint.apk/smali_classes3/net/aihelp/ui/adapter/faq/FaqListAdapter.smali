.class public Lnet/aihelp/ui/adapter/faq/FaqListAdapter;
.super Lnet/aihelp/core/ui/adapter/CommonAdapter;
.source "FaqListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/adapter/CommonAdapter<",
        "Lnet/aihelp/data/model/faq/FaqListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/faq/FaqListAdapter;)Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->mListener:Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;

    return-object p0
.end method

.method private convertRootListView(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;)V
    .locals 1

    const-string v0, "aihelp_tv_title"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method private convertSearchMatchingFaqTitles(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;)V
    .locals 7

    :try_start_0
    const-string v0, "aihelp_iv_title"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    const-string v0, "aihelp_tv_title"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->highlightedColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p2

    :goto_0
    if-ltz p2, :cond_0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v6, 0x21

    invoke-interface {v4, v1, p2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {v2, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private convertSubListView(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;)V
    .locals 2

    const-string v0, "aihelp_iv_title"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    const-string v0, "aihelp_tv_title"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;I)V

    return-void
.end method

.method protected convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;I)V
    .locals 1

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getDisplayType()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->convertSearchMatchingFaqTitles(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->convertSubListView(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->convertRootListView(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;)V

    :goto_0
    iget-object p1, p1, Lnet/aihelp/core/ui/adapter/ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;

    invoke-direct {p3, p0, p2}, Lnet/aihelp/ui/adapter/faq/FaqListAdapter$1;-><init>(Lnet/aihelp/ui/adapter/faq/FaqListAdapter;Lnet/aihelp/data/model/faq/FaqListEntity;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected itemLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_faq_linear_list"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setOnFaqSelectedListener(Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/faq/FaqListAdapter;->mListener:Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;

    return-void
.end method
