.class public Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;
.super Lnet/aihelp/core/ui/adapter/CommonAdapter;
.source "FaqAlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/adapter/CommonAdapter<",
        "Lnet/aihelp/data/model/faq/FaqListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;I)V

    return-void
.end method

.method protected convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/faq/FaqListEntity;I)V
    .locals 6

    const-string p3, "aihelp_tv_faq_title"

    invoke-static {p3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object p3, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    const-wide v2, 0x3fe3333333333333L    # 0.6

    add-double/2addr v0, v2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    sget-object p3, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {p3}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getQuery()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getQuery()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->highlightedColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p2

    if-ltz p2, :cond_0

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    const/16 v5, 0x21

    invoke-interface {v2, v3, p2, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance p2, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter$1;

    invoke-direct {p2, p0}, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter$1;-><init>(Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected itemLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_faq_alert"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
