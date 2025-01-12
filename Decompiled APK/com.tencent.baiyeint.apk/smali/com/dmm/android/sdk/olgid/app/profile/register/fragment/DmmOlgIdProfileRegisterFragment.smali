.class public Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;
.super Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;
.source "DmmOlgIdProfileRegisterFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->getInstance()Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->getRegisterProfileURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;->mParent:Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;->mParent:Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;

    :cond_0
    return-void
.end method

.method protected onCloseCommand(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->onDestroy()V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;->mParent:Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
