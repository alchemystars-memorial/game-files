.class Lnet/aihelp/ui/op/OperationFragment$2;
.super Ljava/lang/Object;
.source "OperationFragment.java"

# interfaces
.implements Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;


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

.field final synthetic val$operateSectionList:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/op/OperationFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    iput-object p2, p0, Lnet/aihelp/ui/op/OperationFragment$2;->val$operateSectionList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;I)V
    .locals 10

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v1}, Lnet/aihelp/ui/op/OperationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v3}, Lnet/aihelp/ui/op/OperationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x2

    new-array v3, v2, [[I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a1

    const/4 v7, 0x0

    aput v6, v5, v7

    aput-object v5, v3, v7

    new-array v5, v7, [I

    aput-object v5, v3, v4

    new-array v2, v2, [I

    sget-object v5, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v7

    sget-object v5, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object v2, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-static {v2}, Lnet/aihelp/ui/op/OperationFragment;->access$000(Lnet/aihelp/ui/op/OperationFragment;)Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-static {v2}, Lnet/aihelp/ui/op/OperationFragment;->access$200(Lnet/aihelp/ui/op/OperationFragment;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/aihelp/ui/op/OperationFragment$2;->val$operateSectionList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/data/model/op/OperateSection;

    invoke-virtual {v2}, Lnet/aihelp/data/model/op/OperateSection;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v2}, Lnet/aihelp/ui/op/OperationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v3}, Lnet/aihelp/ui/op/OperationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    invoke-static {v3, v5, v8, v9}, Lnet/aihelp/ui/op/OperationFragment;->access$300(Lnet/aihelp/ui/op/OperationFragment;Landroid/content/Context;D)I

    move-result v3

    iget-object v5, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v5}, Lnet/aihelp/ui/op/OperationFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6, v8, v9}, Lnet/aihelp/ui/op/OperationFragment;->access$400(Lnet/aihelp/ui/op/OperationFragment;Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v3}, Lnet/aihelp/ui/op/OperationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v3, v5, v8, v9}, Lnet/aihelp/ui/op/OperationFragment;->access$500(Lnet/aihelp/ui/op/OperationFragment;Landroid/content/Context;D)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-virtual {v3}, Lnet/aihelp/ui/op/OperationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5, v8, v9}, Lnet/aihelp/ui/op/OperationFragment;->access$600(Lnet/aihelp/ui/op/OperationFragment;Landroid/content/Context;D)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "aihelp_bg_msg_unread"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lnet/aihelp/common/Const;->sOperationUnreadListener:Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/aihelp/ui/op/OperationFragment$2;->this$0:Lnet/aihelp/ui/op/OperationFragment;

    invoke-static {v2}, Lnet/aihelp/ui/op/OperationFragment;->access$000(Lnet/aihelp/ui/op/OperationFragment;)Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lnet/aihelp/ui/op/OperationFragment$2;->val$operateSectionList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/aihelp/data/model/op/OperateSection;

    invoke-virtual {p2}, Lnet/aihelp/data/model/op/OperateSection;->getId()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v2, p2}, Lnet/aihelp/data/localize/data/OperateHelper;->isSectionUnread(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    return-void
.end method
