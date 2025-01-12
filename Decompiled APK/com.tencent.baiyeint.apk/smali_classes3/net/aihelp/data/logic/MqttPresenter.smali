.class public abstract Lnet/aihelp/data/logic/MqttPresenter;
.super Lnet/aihelp/core/mvp/AbsPresenter;
.source "MqttPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lnet/aihelp/core/mvp/IView;",
        "R::",
        "Lnet/aihelp/core/mvp/IRepository;",
        ">",
        "Lnet/aihelp/core/mvp/AbsPresenter<",
        "TV;TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/mvp/AbsPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isNetworkAvailable()Z
    .locals 3

    iget-object v0, p0, Lnet/aihelp/data/logic/MqttPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/logic/MqttPresenter;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public logoutMqtt(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/data/logic/MqttPresenter;->logoutMqtt(ZI)V

    return-void
.end method

.method public logoutMqtt(ZI)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/logic/MqttPresenter$1;

    invoke-direct {v1, p0, p1, p2}, Lnet/aihelp/data/logic/MqttPresenter$1;-><init>(Lnet/aihelp/data/logic/MqttPresenter;ZI)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public validateNetwork()Z
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/data/logic/MqttPresenter;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lnet/aihelp/data/logic/MqttPresenter;->mContext:Landroid/content/Context;

    const-string v2, "aihelp_network_no_connect"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return v0
.end method
