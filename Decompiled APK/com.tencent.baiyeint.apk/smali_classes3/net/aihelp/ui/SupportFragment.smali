.class public Lnet/aihelp/ui/SupportFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "SupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/aihelp/ui/faq/IFaqParentView;


# instance fields
.field private fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

.field private fakeSearchPort:Landroid/widget/LinearLayout;

.field private isOperateInHelpPage:Z

.field private ivBack:Landroid/widget/ImageView;

.field private ivLoading:Landroid/widget/ImageView;

.field private ivTitle:Landroid/widget/ImageView;

.field private loadingAnimator:Landroid/animation/ObjectAnimator;

.field private mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

.field private msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

.field private searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

.field private tvLogo:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/SupportFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    return-void
.end method

.method public static getInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/SupportFragment;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/SupportFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/SupportFragment;-><init>()V

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/SupportFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private shouldLocalizeFAQ(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "support_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method private shouldShowLoading(Landroidx/fragment/app/Fragment;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lnet/aihelp/ui/op/OperationFragment;

    const-class v1, Lnet/aihelp/ui/cs/ElvaBotFragment;

    const-class v1, Lnet/aihelp/ui/cs/ConversationFragment;

    const-string v1, "ElvaBotFragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ConversationFragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OperationFragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private updateTitleBarAccordingToSearchStatus(Z)V
    .locals 10

    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/ui/helper/FragmentHelper;->getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lnet/aihelp/ui/faq/BaseFaqFragment;

    const/4 v4, 0x1

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v3, :cond_8

    iget-object v3, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    sget-boolean v8, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqTitleIconVisible:Z

    if-eqz v8, :cond_0

    if-nez p1, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    if-nez p1, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    sget-boolean v3, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqSearchVisible:Z

    if-eqz v3, :cond_5

    const-class v3, Lnet/aihelp/ui/faq/FaqHomeFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v8, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchPort:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez p1, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v7

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v8, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    if-eqz v3, :cond_3

    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    move v3, v6

    goto :goto_3

    :cond_3
    move v3, v7

    :goto_3
    invoke-virtual {v8, v3}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->setVisibility(I)V

    iget-object v3, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    if-eqz p1, :cond_4

    move p1, v6

    goto :goto_4

    :cond_4
    move p1, v7

    :goto_4
    invoke-virtual {v3, p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->setVisibility(I)V

    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_6

    const-string p1, "aihelp_iv_back"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvLogo:Landroid/widget/TextView;

    instance-of v3, v2, Lnet/aihelp/ui/faq/FaqHomeFragment;

    if-eqz v3, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v8, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v3, v8, v9}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v3

    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_8
    instance-of p1, v2, Lnet/aihelp/ui/cs/BaseCSFragment;

    if-nez p1, :cond_9

    instance-of p1, v2, Lnet/aihelp/ui/op/OperationFragment;

    if-eqz p1, :cond_b

    :cond_9
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isCsTitleIconVisible:Z

    if-eqz v2, :cond_a

    move v2, v6

    goto :goto_6

    :cond_a
    move v2, v7

    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchPort:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    invoke-virtual {p1, v7}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-virtual {p1, v7}, Lnet/aihelp/ui/widget/AIHelpSearchView;->setVisibility(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_b

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected getBundleBeforeDataPrepared(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/SupportFragment;->shouldLocalizeFAQ(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3e9

    invoke-static {p1}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    :cond_0
    return-void
.end method

.method public getFaqEventListener()Lnet/aihelp/ui/faq/IFaqEventListener;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_support"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 3

    const-string p1, "aihelp_rl_navigation"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarBackground:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const-string p1, "aihelp_iv_back"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivBack:Landroid/widget/ImageView;

    const-string p1, "aihelp_iv_loading"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    const-string p1, "aihelp_iv_title"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    const-string p1, "aihelp_tv_title"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    const-string p1, "aihelp_msg_view"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpMsgView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    const-string p1, "aihelp_search_view"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpSearchView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    const-string p1, "aihelp_fake_search_port"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchPort:Landroid/widget/LinearLayout;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarBackground:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string p1, "aihelp_fake_search_land"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivBack:Landroid/widget/ImageView;

    const-string v0, "aihelp_svg_ic_back"

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    const-string v0, "aihelp_svg_ic_loading"

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    invoke-virtual {p1, p0}, Lnet/aihelp/ui/widget/AIHelpMsgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Lnet/aihelp/ui/helper/BreakReleaseHelper;

    invoke-direct {v0}, Lnet/aihelp/ui/helper/BreakReleaseHelper;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v0}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchPort:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    invoke-virtual {p1, p0}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    const-string p1, "aihelp_logo"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvLogo:Landroid/widget/TextView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvLogo:Landroid/widget/TextView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    new-instance v0, Lnet/aihelp/ui/SupportFragment$1;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/SupportFragment$1;-><init>(Lnet/aihelp/ui/SupportFragment;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getFaqEventListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->setupSearchView(Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;Landroid/text/TextWatcher;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method protected isBindEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/core/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lnet/aihelp/core/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lnet/aihelp/ui/helper/SupportHelper;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/os/Bundle;)V

    iput-object v0, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/ui/helper/FragmentHelper;->getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lnet/aihelp/ui/cs/ElvaBotFragment;

    const-string v2, "ElvaBotFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lnet/aihelp/ui/cs/ElvaBotFragment;

    move-object v1, v0

    check-cast v1, Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->onBackPressed()Z

    move-result v0

    return v0

    :cond_1
    const-class v2, Lnet/aihelp/ui/faq/FaqContentFragment;

    const-string v2, "FaqContentFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Lnet/aihelp/ui/faq/FaqContentFragment;

    move-object v1, v0

    check-cast v1, Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/FaqContentFragment;->onBackPressed()Z

    move-result v0

    return v0

    :cond_2
    const-class v2, Lnet/aihelp/ui/cs/IntentUrlFragment;

    const-string v2, "IntentUrlFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v0, Lnet/aihelp/ui/cs/IntentUrlFragment;

    move-object v1, v0

    check-cast v1, Lnet/aihelp/ui/cs/IntentUrlFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->onBackPressed()Z

    move-result v0

    return v0

    :cond_3
    const-class v2, Lnet/aihelp/ui/faq/FaqSearchFragment;

    const-string v2, "FaqSearchFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-static {v0, v1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const-class v2, Lnet/aihelp/ui/op/OperationFragment;

    const-string v2, "OperationFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v0, Lnet/aihelp/ui/op/OperationFragment;

    move-object v1, v0

    check-cast v1, Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/op/OperationFragment;->onBackPressed()Z

    move-result v0

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Lnet/aihelp/utils/FastClickValidator;->validate(F)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lnet/aihelp/common/Const;->isNestedFragmentOnResume:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_back"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_msg_view"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/ui/helper/FragmentHelper;->getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lnet/aihelp/ui/op/OperationFragment;

    const-string v2, "OperationFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-boolean v1, p0, Lnet/aihelp/ui/SupportFragment;->isOperateInHelpPage:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {v1, v0, v3}, Lnet/aihelp/ui/helper/SupportHelper;->startConversation(Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {v1, v0, v3}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToSectionRoot(Landroid/os/Bundle;Z)V

    invoke-static {v3}, Lnet/aihelp/ui/helper/StatisticHelper;->whenAllFAQSectionsVisible(Z)V

    goto :goto_1

    :cond_4
    const-string v2, "skip_elva_in_faq"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-class v4, Lnet/aihelp/ui/cs/ElvaBotFragment;

    const-string v4, "ElvaBotFragment"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {v1, v0, v3}, Lnet/aihelp/ui/helper/SupportHelper;->startElva(Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_6
    :goto_0
    if-eqz v2, :cond_7

    const/4 v1, 0x2

    const-string v2, "support_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {v1, v0, v3}, Lnet/aihelp/ui/helper/SupportHelper;->startConversation(Landroid/os/Bundle;Z)V

    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_fake_search_port"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_fake_search_land"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_a

    :cond_9
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToSearch(Landroid/os/Bundle;)V

    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->autoFocus()V

    :cond_a
    return-void
.end method

.method public onEventComing(Lnet/aihelp/core/util/bus/event/EventCenter;)V
    .locals 8

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/ui/helper/FragmentHelper;->getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v2, Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OperationFragment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lnet/aihelp/ui/SupportFragment;->tvLogo:Landroid/widget/TextView;

    sget-object v4, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v5, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v4, v5, v6}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    instance-of v3, p1, Lnet/aihelp/data/event/OperatePagerEvent;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lnet/aihelp/data/event/OperatePagerEvent;

    invoke-virtual {v3}, Lnet/aihelp/data/event/OperatePagerEvent;->getEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lnet/aihelp/ui/SupportFragment;->isOperateInHelpPage:Z

    :cond_2
    instance-of v3, p1, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lnet/aihelp/data/event/SupportActionEvent;

    invoke-virtual {v3}, Lnet/aihelp/data/event/SupportActionEvent;->getCode()I

    move-result v5

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    invoke-virtual {v5, v1}, Lnet/aihelp/ui/widget/AIHelpMsgView;->setVisibility(I)V

    invoke-virtual {v3}, Lnet/aihelp/data/event/SupportActionEvent;->getSupportAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    invoke-virtual {v2, v4}, Lnet/aihelp/ui/widget/AIHelpMsgView;->setVisibility(I)V

    goto :goto_1

    :pswitch_0
    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lnet/aihelp/ui/SupportFragment;->isOperateInHelpPage:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    const-string v5, "aihelp_svg_ic_msg_read"

    invoke-virtual {v2, v3, v5}, Lnet/aihelp/ui/widget/AIHelpMsgView;->updateImageResource(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    const-string v5, "aihelp_svg_ic_faq"

    invoke-virtual {v2, v3, v5}, Lnet/aihelp/ui/widget/AIHelpMsgView;->updateImageResource(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    invoke-virtual {v2, v4}, Lnet/aihelp/ui/widget/AIHelpMsgView;->setVisibility(I)V

    :cond_5
    :goto_1
    instance-of v2, p1, Lnet/aihelp/data/event/LoadingElvaEvent;

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/event/EventCenter;->getCode()I

    move-result v2

    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, v0}, Lnet/aihelp/ui/SupportFragment;->shouldShowLoading(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    :cond_8
    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_9
    :goto_3
    instance-of v2, p1, Lnet/aihelp/data/event/PageHoppingEvent;

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/event/EventCenter;->getCode()I

    move-result v2

    const/16 v4, 0x3f0

    if-eq v2, v4, :cond_b

    const/16 v4, 0x3f1

    if-eq v2, v4, :cond_a

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    move-object v4, p1

    check-cast v4, Lnet/aihelp/data/event/PageHoppingEvent;

    invoke-virtual {v4}, Lnet/aihelp/data/event/PageHoppingEvent;->getEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v4, v3}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToFillForm(Landroid/os/Bundle;Z)V

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lnet/aihelp/ui/helper/SupportHelper;->startConversation(Landroid/os/Bundle;Z)V

    :cond_c
    :goto_4
    instance-of v2, p1, Lnet/aihelp/data/event/UpdateTitleEvent;

    if-eqz v2, :cond_12

    move-object v2, p1

    check-cast v2, Lnet/aihelp/data/event/UpdateTitleEvent;

    invoke-virtual {v2}, Lnet/aihelp/data/event/UpdateTitleEvent;->getIcon()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    instance-of v4, v0, Lnet/aihelp/ui/cs/BaseCSFragment;

    if-eqz v4, :cond_d

    sget-boolean v4, Lnet/aihelp/common/CustomConfig$CustomerService;->isCsTitleIconVisible:Z

    if-eqz v4, :cond_d

    move v4, v3

    goto :goto_5

    :cond_d
    move v4, v1

    :goto_5
    instance-of v5, v0, Lnet/aihelp/ui/faq/BaseFaqFragment;

    if-eqz v5, :cond_e

    sget-boolean v5, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqTitleIconVisible:Z

    if-eqz v5, :cond_e

    move v5, v3

    goto :goto_6

    :cond_e
    move v5, v1

    :goto_6
    iget-object v6, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lnet/aihelp/data/event/UpdateTitleEvent;->getIcon()Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_f

    if-eqz v5, :cond_10

    :cond_f
    move v1, v3

    :cond_10
    invoke-static {v6, v7, v1}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_11
    invoke-virtual {v2}, Lnet/aihelp/data/event/UpdateTitleEvent;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lnet/aihelp/data/event/UpdateTitleEvent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    instance-of v1, p1, Lnet/aihelp/data/event/SearchViewVisibilityChangeEvent;

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/event/EventCenter;->getEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    :cond_13
    instance-of p1, p1, Lnet/aihelp/data/event/OrientationChangeEvent;

    if-eqz p1, :cond_14

    instance-of p1, v0, Lnet/aihelp/ui/faq/FaqSearchFragment;

    invoke-direct {p0, p1}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/ui/BaseFragment;->onResume()V

    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {v0}, Lnet/aihelp/ui/helper/SupportHelper;->start()V

    return-void
.end method
