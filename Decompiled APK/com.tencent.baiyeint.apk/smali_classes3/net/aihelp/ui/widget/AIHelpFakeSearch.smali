.class public Lnet/aihelp/ui/widget/AIHelpFakeSearch;
.super Landroid/widget/LinearLayout;
.source "AIHelpFakeSearch.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_layout_fake_search"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_ll_search"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    const/16 p3, 0x3e7

    invoke-static {p2, p3}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "aihelp_iv_search"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    const-string p3, "aihelp_svg_ic_search_grey"

    invoke-static {p1, p3, p2}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const-string p1, "aihelp_tv_search_hint"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object p2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqSearchHint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v0, 0x3fd6666660000000L    # 0.3499999940395355

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
