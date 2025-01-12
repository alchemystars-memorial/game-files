.class public Lnet/aihelp/ui/helper/SupportHelper;
.super Lnet/aihelp/ui/wrapper/FaqEventListenerWrapper;
.source "SupportHelper.java"


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final childFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final context:Landroid/content/Context;

.field private final isSupportStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private supportMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/ui/wrapper/FaqEventListenerWrapper;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->isSupportStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lnet/aihelp/ui/helper/SupportHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private getBackStackName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->supportMode:I

    const-string v1, ""

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-class v0, Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method private getTopMostFaqFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0}, Lnet/aihelp/ui/helper/FragmentHelper;->getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private onIntentToOperate(Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p1}, Lnet/aihelp/ui/op/OperationFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/op/OperationFragment;

    move-result-object v2

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_support_fragment_container"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onIntentToShowSection(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "section_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToSectionRoot(Landroid/os/Bundle;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToQuestionList(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onIntentToConversation(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/helper/SupportHelper;->startConversation(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onIntentToElvaBot(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/helper/SupportHelper;->startElva(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onIntentToFillForm(Landroid/os/Bundle;Z)V
    .locals 7

    invoke-static {p1}, Lnet/aihelp/ui/cs/IntentUrlFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/IntentUrlFragment;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_support_fragment_container"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    invoke-static/range {v0 .. v6}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onIntentToOperateContent(Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p1}, Lnet/aihelp/ui/op/OperateContentFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/op/OperateContentFragment;

    move-result-object v2

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_support_fragment_container"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v3, "fraOperateContent"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onIntentToQuestionContent(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "faq_main_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/faq/FaqContentFragment;

    move-result-object v3

    iget-object v1, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_support_fragment_container"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/helper/SupportHelper;->getBackStackName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onIntentToQuestionList(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lnet/aihelp/ui/faq/FaqListFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/faq/FaqListFragment;

    move-result-object v3

    iget-object v1, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_support_fragment_container"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/helper/SupportHelper;->getBackStackName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onIntentToSearch(Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const-string v0, "aihelp_support_fragment_container"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lnet/aihelp/ui/faq/FaqSearchFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/faq/FaqSearchFragment;

    move-result-object v3

    iget-object v1, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v4, "tag_faq_search"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onIntentToSectionList(Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p1}, Lnet/aihelp/ui/faq/FaqHomeFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/faq/FaqHomeFragment;

    move-result-object v2

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_faq_root"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v3, "aihelp_support_fragment_container"

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v1

    move v1, v3

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_1
    return-void
.end method

.method public onIntentToSectionRoot(Landroid/os/Bundle;Z)V
    .locals 7

    invoke-static {p1}, Lnet/aihelp/ui/faq/FaqHomeFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/faq/FaqHomeFragment;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_support_fragment_container"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p3, "tag_faq_search"

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lnet/aihelp/ui/faq/FaqSearchFragment;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/faq/FaqSearchFragment;->onQuery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->isSupportStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    const-string v1, "support_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->supportMode:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToSectionRoot(Landroid/os/Bundle;Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToFillForm(Landroid/os/Bundle;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToOperate(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToQuestionContent(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToShowSection(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Lnet/aihelp/ui/helper/SupportHelper;->startConversation(Landroid/os/Bundle;Z)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Lnet/aihelp/ui/helper/SupportHelper;->startElva(Landroid/os/Bundle;Z)V

    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->isSupportStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startConversation(Landroid/os/Bundle;Z)V
    .locals 7

    invoke-static {p1}, Lnet/aihelp/ui/cs/ConversationFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/ConversationFragment;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    iget-object v0, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_support_fragment_container"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    invoke-static/range {v0 .. v6}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public startElva(Landroid/os/Bundle;Z)V
    .locals 8

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/ElvaBotFragment;

    move-result-object v3

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v5, p1

    iget-object v1, p0, Lnet/aihelp/ui/helper/SupportHelper;->childFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "aihelp_support_fragment_container"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v5

    invoke-static/range {v1 .. v7}, Lnet/aihelp/ui/helper/FragmentHelper;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
