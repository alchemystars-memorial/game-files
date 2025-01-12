.class public Lcom/intlgame/core/lifecycle/INTLInstrumentation;
.super Landroid/app/Instrumentation;
.source "INTLInstrumentation.java"


# instance fields
.field private mWatchActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    iput-object p1, p0, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->mWatchActivity:Landroid/app/Activity;

    return-void
.end method

.method private isInterceptDispatch(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->mWatchActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    invoke-interface {v0, p2}, Lcom/intlgame/core/interfaces/ILifeCycle;->onCreate(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onDestroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    invoke-interface {v0, p2}, Lcom/intlgame/core/interfaces/ILifeCycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onStart()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/intlgame/core/lifecycle/INTLInstrumentation;->isInterceptDispatch(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/intlgame/core/lifecycle/LifeCycleManager;->mLifeCycleObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/ILifeCycle;

    invoke-interface {v0}, Lcom/intlgame/core/interfaces/ILifeCycle;->onStop()V

    goto :goto_0

    :cond_1
    return-void
.end method
