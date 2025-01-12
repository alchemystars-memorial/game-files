.class public Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;
.super Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;
.source "DmmOlgIdSandboxLoginActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_sandbox_login_activity_title:I

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCancelClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity$1;-><init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;)V

    return-object v0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/DmmOlgIdSandboxLoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-direct {v1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_fragment_base:I

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method
