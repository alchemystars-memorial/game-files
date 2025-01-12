.class Lnet/aihelp/ui/op/OperationFragment$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "OperationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/op/OperationFragment;->createOperateView(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/op/OperationFragment;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$operateSectionList:Ljava/util/List;

.field final synthetic val$tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/op/OperationFragment;Ljava/util/List;Lnet/aihelp/ui/widget/tabs/TabLayout;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/op/OperationFragment$1;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    iput-object p2, p0, Lnet/aihelp/ui/op/OperationFragment$1;->val$operateSectionList:Ljava/util/List;

    iput-object p3, p0, Lnet/aihelp/ui/op/OperationFragment$1;->val$tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iput-object p4, p0, Lnet/aihelp/ui/op/OperationFragment$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position -------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/UpdateTitleEvent;

    sget-object v2, Lnet/aihelp/common/CustomConfig$CustomerService;->csNavigationBarTitleIcon:Ljava/lang/String;

    sget-object v3, Lnet/aihelp/common/CustomConfig$CustomerService;->csNavigationTitle:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lnet/aihelp/data/event/UpdateTitleEvent;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/ui/op/OperationFragment$1;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/op/OperationFragment;->access$000(Lnet/aihelp/ui/op/OperationFragment;)Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/op/OperationFragment$1;->val$operateSectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/op/OperateSection;

    invoke-virtual {v0}, Lnet/aihelp/data/model/op/OperateSection;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v1, v0}, Lnet/aihelp/data/localize/data/OperateHelper;->isSectionUnread(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v4

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lnet/aihelp/ui/op/OperationFragment$1;->val$tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lnet/aihelp/ui/op/OperationFragment$1;->val$tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v3, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabAt(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    if-ne v3, p1, :cond_1

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_1
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-ne v2, p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/op/OperationFragment$1;->val$bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v2, Lnet/aihelp/data/event/OperatePagerEvent;

    iget-object v3, p0, Lnet/aihelp/ui/op/OperationFragment$1;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-static {v3}, Lnet/aihelp/ui/op/OperationFragment;->access$000(Lnet/aihelp/ui/op/OperationFragment;)Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne p1, v3, :cond_4

    move v1, v4

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1}, Lnet/aihelp/data/event/OperatePagerEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/ui/op/OperationFragment$1;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/op/OperationFragment;->access$000(Lnet/aihelp/ui/op/OperationFragment;)Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lnet/aihelp/ui/op/OperationFragment$1;->val$bundle:Landroid/os/Bundle;

    const-string v0, "HUMAN_embedded_in_operation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isFormSubmitted()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/event/PageHoppingEvent;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1}, Lnet/aihelp/data/event/PageHoppingEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lnet/aihelp/ui/op/OperationFragment$1;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-static {p1}, Lnet/aihelp/ui/op/OperationFragment;->access$100(Lnet/aihelp/ui/op/OperationFragment;)Z

    move-result p1

    invoke-static {p1}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->updateElvaSupportActionStatus(Z)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v1, 0x3e9

    const/16 v2, 0x3ed

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method
