.class public Lnet/aihelp/ui/op/OperateListFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "OperateListFragment.java"


# instance fields
.field private opList:Landroidx/recyclerview/widget/RecyclerView;

.field private operateAdapter:Lnet/aihelp/ui/adapter/OperateListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/op/OperateListFragment;)Lnet/aihelp/ui/faq/IFaqEventListener;
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/ui/op/OperateListFragment;->getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object p0

    return-object p0
.end method

.method private getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperateListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lnet/aihelp/ui/SupportFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/aihelp/ui/faq/IFaqParentView;

    invoke-interface {v1}, Lnet/aihelp/ui/faq/IFaqParentView;->getFaqEventListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/op/OperateListFragment;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/op/OperateListFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/op/OperateListFragment;-><init>()V

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/op/OperateListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "operate_section"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/localize/data/OperateHelper;->getOperateArticles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateListFragment;->operateAdapter:Lnet/aihelp/ui/adapter/OperateListAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/ui/adapter/OperateListAdapter;->update(Ljava/util/List;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_operate_list"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 2

    const-string p1, "aihelp_rv_operate"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/op/OperateListFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lnet/aihelp/ui/op/OperateListFragment;->opList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperateListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    sget-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {p1, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p1

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateListFragment;->opList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    new-instance p1, Lnet/aihelp/ui/adapter/OperateListAdapter;

    invoke-virtual {p0}, Lnet/aihelp/ui/op/OperateListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/op/OperateListFragment$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/op/OperateListFragment$1;-><init>(Lnet/aihelp/ui/op/OperateListFragment;)V

    invoke-direct {p1, v0, v1}, Lnet/aihelp/ui/adapter/OperateListAdapter;-><init>(Landroid/content/Context;Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;)V

    iput-object p1, p0, Lnet/aihelp/ui/op/OperateListFragment;->operateAdapter:Lnet/aihelp/ui/adapter/OperateListAdapter;

    iget-object v0, p0, Lnet/aihelp/ui/op/OperateListFragment;->opList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
