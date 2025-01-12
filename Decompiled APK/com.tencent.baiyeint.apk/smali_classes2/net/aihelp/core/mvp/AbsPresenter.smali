.class public abstract Lnet/aihelp/core/mvp/AbsPresenter;
.super Ljava/lang/Object;
.source "AbsPresenter.java"

# interfaces
.implements Lnet/aihelp/core/mvp/IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lnet/aihelp/core/mvp/IView;",
        "R::",
        "Lnet/aihelp/core/mvp/IRepository;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/mvp/IPresenter<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mRepo:Lnet/aihelp/core/mvp/IRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field protected mSp:Lnet/aihelp/utils/SpUtil;

.field protected mView:Lnet/aihelp/core/mvp/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lnet/aihelp/core/mvp/AbsPresenter;->initRepository()Lnet/aihelp/core/mvp/IRepository;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    invoke-virtual {p0}, Lnet/aihelp/core/mvp/AbsPresenter;->initOtherRepository()V

    return-void
.end method


# virtual methods
.method public attachView(Lnet/aihelp/core/mvp/IView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-void
.end method

.method public detachView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-void
.end method

.method protected get(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/mvp/AbsPresenter;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mContext:Landroid/content/Context;

    const-string p2, "aihelp_network_no_connect"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestGetByAsync(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method

.method protected initOtherRepository()V
    .locals 0

    return-void
.end method

.method protected initRepository()Lnet/aihelp/core/mvp/IRepository;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    const-class v3, Lnet/aihelp/core/mvp/IRepository;

    if-ne v0, v3, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mContext:Landroid/content/Context;

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/mvp/IRepository;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v2
.end method

.method public isNetworkAvailable()Z
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
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

.method protected mqtt(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/mvp/AbsPresenter;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mContext:Landroid/content/Context;

    const-string p2, "aihelp_network_no_connect"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->postToServer(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;)",
            "Lokhttp3/Call;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/mvp/AbsPresenter;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/mvp/AbsPresenter;->mContext:Landroid/content/Context;

    const-string p2, "aihelp_network_no_connect"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method
