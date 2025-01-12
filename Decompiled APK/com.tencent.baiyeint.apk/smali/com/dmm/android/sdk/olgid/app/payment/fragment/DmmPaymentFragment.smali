.class public Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;
.super Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;
.source "DmmPaymentFragment.java"


# static fields
.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final LOGIN_RETRY_MAX:I = 0x1


# instance fields
.field private loginRetryCount:I

.field private mPaymentId:Ljava/lang/String;

.field private mTransactionUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->loginRetryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->setCookieAuthInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;Landroid/webkit/WebView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->loadUrl(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->mPaymentId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->mTransactionUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onCloseCommand(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getPaymentCallback()Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    move-result-object p2

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->setPaymentCallback(Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->mPaymentId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;->onClose(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$BundleKey;->Transaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->mTransactionUrl:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$BundleKey;->Payment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->mPaymentId:Ljava/lang/String;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onErrorCommand(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getPaymentCallback()Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    move-result-object v0

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->setPaymentCallback(Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string v1, "error_code"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "error_code"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;->valueOf(I)Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    sget-object p1, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;->FATAL:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;

    :goto_0
    sget-object p2, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;->NOT_LOGIN:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;

    if-ne p1, p2, :cond_1

    iget p2, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->loginRetryCount:I

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->loginRetryCount:I

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object p1

    new-instance p2, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;

    invoke-direct {p2, p0, v0}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment$1;-><init>(Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V

    invoke-virtual {p1, p2}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->publishInternalSession(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->mPaymentId:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;->onError(Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmPaymentCallback$ErrorCode;)V

    :cond_2
    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
