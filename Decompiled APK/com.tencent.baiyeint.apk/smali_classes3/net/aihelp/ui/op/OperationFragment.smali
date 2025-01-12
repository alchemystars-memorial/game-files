.class public Lnet/aihelp/ui/op/OperationFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "OperationFragment.java"


# instance fields
.field private elvaTitle:Ljava/lang/String;

.field private isContactUsAlwaysOnline:Z

.field private isNowInOperatePage:Z

.field private mAdapter:Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

.field private mCurrentItem:I

.field private operateView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    const-string v0, "aihelp_op_cs"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/op/OperationFragment;->elvaTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/op/OperationFragment;)Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/op/OperationFragment;->mAdapter:Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/op/OperationFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/aihelp/ui/op/OperationFragment;->isContactUsAlwaysOnline:Z

    return p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/op/OperationFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/op/OperationFragment;->elvaTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/op/OperationFragment;Landroid/content/Context;D)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/op/OperationFragment;->dip2px(Landroid/content/Context;D)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lnet/aihelp/ui/op/OperationFragment;Landroid/content/Context;D)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/op/OperationFragment;->dip2px(Landroid/content/Context;D)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lnet/aihelp/ui/op/OperationFragment;Landroid/content/Context;D)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/op/OperationFragment;->dip2px(Landroid/content/Context;D)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lnet/aihelp/ui/op/OperationFragment;Landroid/content/Context;D)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/op/OperationFragment;->dip2px(Landroid/content/Context;D)I

    move-result p0

    return p0
.end method

.method private createOperateView(Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/op/OperateSection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aihelp_tab"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarBackground:Ljava/lang/String;

    sget-wide v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarAlpha:D

    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setBackgroundColor(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setVisibility(I)V

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    const-string v1, "aihelp_view_pager"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "OperationFragment getActivity() returns null!"

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v3, v4, p2}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Ljava/util/List;)V

    iput-object v1, p0, Lnet/aihelp/ui/op/OperationFragment;->mAdapter:Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isContactUsAlwaysOnline"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lnet/aihelp/ui/op/OperationFragment;->isContactUsAlwaysOnline:Z

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "operate_select_position"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lnet/aihelp/ui/op/OperationFragment;->mCurrentItem:I

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "aihelp_op_cs"

    invoke-static {v4}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "operate_elva_title"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/aihelp/ui/op/OperationFragment;->elvaTitle:Ljava/lang/String;

    :cond_2
    new-instance v3, Lnet/aihelp/ui/op/OperationFragment$1;

    invoke-direct {v3, p0, p2, v0, v1}, Lnet/aihelp/ui/op/OperationFragment$1;-><init>(Lnet/aihelp/ui/op/OperationFragment;Ljava/util/List;Lnet/aihelp/ui/widget/tabs/TabLayout;Landroid/os/Bundle;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    new-instance v1, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;

    new-instance v3, Lnet/aihelp/ui/op/OperationFragment$2;

    invoke-direct {v3, p0, p2}, Lnet/aihelp/ui/op/OperationFragment$2;-><init>(Lnet/aihelp/ui/op/OperationFragment;Ljava/util/List;)V

    const/4 p2, 0x1

    invoke-direct {v1, v0, p1, p2, v3}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->attach()V

    iget-boolean v0, p0, Lnet/aihelp/ui/op/OperationFragment;->isNowInOperatePage:Z

    if-nez v0, :cond_4

    iput-boolean p2, p0, Lnet/aihelp/ui/op/OperationFragment;->isNowInOperatePage:Z

    iget v0, p0, Lnet/aihelp/ui/op/OperationFragment;->mCurrentItem:I

    iget-object v1, p0, Lnet/aihelp/ui/op/OperationFragment;->mAdapter:Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, p2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lnet/aihelp/ui/op/OperationFragment;->mAdapter:Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/event/OperatePagerEvent;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p2}, Lnet/aihelp/data/event/OperatePagerEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lnet/aihelp/ui/op/OperationFragment;->isContactUsAlwaysOnline:Z

    invoke-static {p1}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->updateElvaSupportActionStatus(Z)V

    goto :goto_1

    :cond_3
    iget p2, p0, Lnet/aihelp/ui/op/OperationFragment;->mCurrentItem:I

    invoke-virtual {p1, p2, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/op/OperationFragment;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/op/OperationFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/op/OperationFragment;-><init>()V

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/op/OperationFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLoadingTargetViewId()I
    .locals 1

    const-string v0, "aihelp_operate_root"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/op/OperationFragment;->mAdapter:Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getElvaBotFragment()Lnet/aihelp/ui/cs/ElvaBotFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/op/OperationFragment;->mAdapter:Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getElvaBotFragment()Lnet/aihelp/ui/cs/ElvaBotFragment;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->onBackPressed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenOperationVisible()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "aihelp_fra_operate"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/op/OperationFragment;->operateView:Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperationFragment;->getLoadingTargetViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    invoke-direct {v0, p2}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/aihelp/ui/op/OperationFragment;->mVaryViewHelperController:Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    :cond_0
    sget-object p2, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {p2}, Lnet/aihelp/data/localize/data/OperateHelper;->getOperateSections()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/op/OperationFragment;->createOperateView(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method
