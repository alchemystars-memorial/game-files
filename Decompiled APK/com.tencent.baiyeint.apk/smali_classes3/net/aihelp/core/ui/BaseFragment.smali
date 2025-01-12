.class public abstract Lnet/aihelp/core/ui/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lnet/aihelp/core/mvp/IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/BaseFragment$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lnet/aihelp/core/mvp/IPresenter;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lnet/aihelp/core/mvp/IView;"
    }
.end annotation


# static fields
.field private static shouldRetainChildFragmentManager:Z


# instance fields
.field private isInflateFinished:Z

.field protected mHandler:Lnet/aihelp/core/ui/BaseFragment$MyHandler;

.field protected mInflateView:Landroid/view/View;

.field protected mPresenter:Lnet/aihelp/core/mvp/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field protected mVaryViewHelperController:Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

.field private retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lnet/aihelp/core/ui/BaseFragment$MyHandler;

    invoke-direct {v0, p0}, Lnet/aihelp/core/ui/BaseFragment$MyHandler;-><init>(Lnet/aihelp/core/ui/BaseFragment;)V

    iput-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mHandler:Lnet/aihelp/core/ui/BaseFragment$MyHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mVaryViewHelperController:Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    return-void
.end method

.method private checkVaryViewHelper()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mVaryViewHelperController:Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    if-nez v0, :cond_0

    const-string v0, "You must return a right target view for loading"

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initPresenter()V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    const-class v2, Lnet/aihelp/core/mvp/IPresenter;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/mvp/IPresenter;

    iput-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lnet/aihelp/core/mvp/IPresenter;->attachView(Lnet/aihelp/core/mvp/IView;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected dip2px(Landroid/content/Context;D)I
    .locals 2

    if-nez p1, :cond_0

    double-to-int p1, p2

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p1

    mul-double/2addr p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, v0

    double-to-int p1, p2

    return p1
.end method

.method public get(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mInflateView:Landroid/view/View;

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getActivity(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    return-object p1
.end method

.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected getBundleBeforeDataPrepared(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected abstract getLayout()I
.end method

.method protected getLoadingTargetViewId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    sget-boolean v0, Lnet/aihelp/core/ui/BaseFragment;->shouldRetainChildFragmentManager:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method protected handleMsg(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected abstract initEventAndData(Landroid/view/View;)V
.end method

.method protected isBindEventBus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lnet/aihelp/common/Const;->isNestedFragmentOnResume:Z

    sget-object v0, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/aihelp/config/AIHelpContext;->getLocaleUpdatedContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->isBindEventBus()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/BaseFragment;->setRetainInstance(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-boolean p1, Lnet/aihelp/core/ui/BaseFragment;->shouldRetainChildFragmentManager:Z

    :goto_0
    sget-boolean v0, Lnet/aihelp/core/ui/BaseFragment;->shouldRetainChildFragmentManager:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    :try_start_1
    const-class v0, Landroidx/fragment/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p0, Lnet/aihelp/core/ui/BaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mInflateView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/aihelp/core/ui/BaseFragment;->isInflateFinished:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getLayout()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getLayout()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/ui/BaseFragment;->mInflateView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/aihelp/core/ui/BaseFragment;->mInflateView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lnet/aihelp/core/ui/BaseFragment;->mInflateView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lnet/aihelp/core/ui/BaseFragment;->mInflateView:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mHandler:Lnet/aihelp/core/ui/BaseFragment$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/BaseFragment$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->isBindEventBus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEventComing(Lnet/aihelp/core/util/bus/event/EventCenter;)V
    .locals 0
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onNetworkStateChanged(Lnet/aihelp/core/net/monitor/NetworkState;)V
    .locals 0
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mHandler:Lnet/aihelp/core/ui/BaseFragment$MyHandler;

    new-instance v1, Lnet/aihelp/core/ui/BaseFragment$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/ui/BaseFragment$1;-><init>(Lnet/aihelp/core/ui/BaseFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lnet/aihelp/core/ui/BaseFragment$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lnet/aihelp/core/ui/BaseFragment;->isInflateFinished:Z

    if-nez p2, :cond_3

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;->initPresenter()V

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getLoadingTargetViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mVaryViewHelperController:Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    invoke-direct {v0, p2}, Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/aihelp/core/ui/BaseFragment;->mVaryViewHelperController:Lnet/aihelp/core/ui/loading/helper/VaryViewHelperController;

    :cond_0
    iput-object p1, p0, Lnet/aihelp/core/ui/BaseFragment;->mInflateView:Landroid/view/View;

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/aihelp/core/ui/BaseFragment;->getBundleBeforeDataPrepared(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/BaseFragment;->initEventAndData(Landroid/view/View;)V

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/aihelp/core/ui/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/BaseFragment;->getBundleAfterDataPrepared(Landroid/os/Bundle;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/core/ui/BaseFragment;->isInflateFinished:Z

    :cond_3
    return-void
.end method

.method public restoreViewState()V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;->checkVaryViewHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/BaseFragment$5;

    invoke-direct {v1, p0}, Lnet/aihelp/core/ui/BaseFragment$5;-><init>(Lnet/aihelp/core/ui/BaseFragment;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showEmpty(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;->checkVaryViewHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/BaseFragment$4;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/BaseFragment$4;-><init>(Lnet/aihelp/core/ui/BaseFragment;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public varargs showEmpty([I)V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;->checkVaryViewHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/BaseFragment$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/BaseFragment$3;-><init>(Lnet/aihelp/core/ui/BaseFragment;[I)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/BaseFragment$6;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/BaseFragment$6;-><init>(Lnet/aihelp/core/ui/BaseFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;->checkVaryViewHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/BaseFragment$2;

    invoke-direct {v1, p0}, Lnet/aihelp/core/ui/BaseFragment$2;-><init>(Lnet/aihelp/core/ui/BaseFragment;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showNetError()V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;->checkVaryViewHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/BaseFragment$7;

    invoke-direct {v1, p0}, Lnet/aihelp/core/ui/BaseFragment$7;-><init>(Lnet/aihelp/core/ui/BaseFragment;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
