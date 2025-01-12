.class public Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;
.super Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;
.source "DmmPaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$BundleKey;
    }
.end annotation


# instance fields
.field private mPaymentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->mPaymentId:Ljava/lang/String;

    return-object p0
.end method

.method private showPaymentWebViewFragment()V
    .locals 4

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-direct {v0}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->setParent(Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;)V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_fragment_base:I

    const-class v3, Lcom/dmm/android/sdk/olgid/app/payment/fragment/DmmPaymentFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_activity_title_payment_confirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCancelClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$1;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$1;-><init>(Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->onBackPressed()V

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getPaymentCallback()Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    move-result-object v1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->setPaymentCallback(Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->mPaymentId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;->onCancel(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getPaymentCallback()Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

    move-result-object v1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->setPaymentCallback(Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->mPaymentId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;->onCancel(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->onDestroy()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->finish()V

    return-void

    :cond_1
    sget-object v1, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$BundleKey;->Payment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->mPaymentId:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;->showPaymentWebViewFragment()V

    return-void
.end method
