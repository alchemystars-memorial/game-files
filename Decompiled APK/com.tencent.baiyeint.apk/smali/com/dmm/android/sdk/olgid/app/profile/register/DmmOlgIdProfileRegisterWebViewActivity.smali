.class public Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;
.super Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;
.source "DmmOlgIdProfileRegisterWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$UserCheckErrorAlertFragment;
    }
.end annotation


# instance fields
.field private mUserCheckCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;-><init>()V

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;-><init>(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;)V

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->mUserCheckCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    return-void
.end method

.method static synthetic access$1000(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showNetworkErrorDialog(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showProfileRegisterFragment()V

    return-void
.end method

.method static synthetic access$700(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showNetworkErrorDialogWithHttpStatus(II)V

    return-void
.end method

.method private checkUser()V
    .locals 4

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;

    invoke-static {}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getInstance()Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getUserCheckEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->isEmulator()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;->setUniqueID(Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/api/mobile/DmmApiRequest;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->mUserCheckCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/api/mobile/DmmApiRequest;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V

    new-instance v1, Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;

    invoke-direct {v1}, Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/mobile/DmmApiRequest;->setRetryPolicy(Lcom/dmm/games/android/volley/RetryPolicy;)Lcom/dmm/android/api/mobile/DmmApiRequest;

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->clearOAuthToken()V

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dmm/android/api/mobile/DmmApiRequest;->getRequest()Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    return-void
.end method

.method private showNetworkErrorDialog(ILjava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showNetworkErrorDialog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private showNetworkErrorDialog(Ljava/lang/String;I)V
    .locals 2

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_network_error_title:I

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_status"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private showNetworkErrorDialog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_network_error_title:I

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private showNetworkErrorDialogWithHttpStatus(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showNetworkErrorDialog(Ljava/lang/String;I)V

    return-void
.end method

.method private showProfileRegisterFragment()V
    .locals 4

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;

    invoke-direct {v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;->setParent(Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;

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

    const-class v3, Lcom/dmm/android/sdk/olgid/app/profile/register/fragment/DmmOlgIdProfileRegisterFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showUserCheckErrorDialog(I)V
    .locals 3

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_user_check_error_title:I

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "already_register"

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private showUserCheckErrorDialog(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(Ljava/lang/String;I)V

    return-void
.end method

.method private showUserCheckErrorDialog(Ljava/lang/String;I)V
    .locals 2

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_user_check_error_title:I

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_check"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    new-instance v6, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$2;-><init>(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showUserCheckErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    new-instance v6, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$3;-><init>(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_activity_title_register_profile:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCancelClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$1;-><init>(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->setResult(I)V

    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->checkUser()V

    return-void
.end method
