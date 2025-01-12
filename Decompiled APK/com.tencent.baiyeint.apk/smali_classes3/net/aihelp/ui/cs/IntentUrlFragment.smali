.class public Lnet/aihelp/ui/cs/IntentUrlFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "IntentUrlFragment.java"


# instance fields
.field private mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

.field private mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/IntentUrlFragment;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/cs/IntentUrlFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/cs/IntentUrlFragment;-><init>()V

    invoke-virtual {v0, p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "intent_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent URL is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_intent_url"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 3

    const-string p1, "aihelp_progress_bar"

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/IntentUrlFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;-><init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    iput-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    const-string v0, "aihelp_web_view"

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/webkit/AIHelpWebView;

    iput-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    new-instance v1, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;-><init>(Landroid/content/Context;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public launchPicker(Lnet/aihelp/core/util/permission/Permission$Result;Lnet/aihelp/core/util/permission/IPermissionCallback;)V
    .locals 4
    .annotation runtime Lnet/aihelp/core/util/permission/Permission;
        requestCode = 0x3e9
    .end annotation

    sget-object v0, Lnet/aihelp/ui/cs/IntentUrlFragment$3;->$SwitchMap$net$aihelp$core$util$permission$Permission$Result:[I

    invoke-virtual {p1}, Lnet/aihelp/core/util/permission/Permission$Result;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "aihelp_permission_denied"

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lnet/aihelp/ui/helper/AttachmentDataProvider;->getIntentForMedia(Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->cancelChooseFileDialog()V

    :cond_2
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "aihelp_permission_ignored"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aihelp_permission_settings"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lnet/aihelp/ui/cs/IntentUrlFragment$2;

    invoke-direct {v3, p0, p2}, Lnet/aihelp/ui/cs/IntentUrlFragment$2;-><init>(Lnet/aihelp/ui/cs/IntentUrlFragment;Lnet/aihelp/core/util/permission/IPermissionCallback;)V

    invoke-static {p1, v0, v1, v2, v3}, Lnet/aihelp/utils/ToastUtil;->showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->cancelChooseFileDialog()V

    :cond_4
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aihelp_yes"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    new-instance v3, Lnet/aihelp/ui/cs/IntentUrlFragment$1;

    invoke-direct {v3, p0, p2}, Lnet/aihelp/ui/cs/IntentUrlFragment$1;-><init>(Lnet/aihelp/ui/cs/IntentUrlFragment;Lnet/aihelp/core/util/permission/IPermissionCallback;)V

    invoke-static {p1, v0, v1, v2, v3}, Lnet/aihelp/utils/ToastUtil;->showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->cancelChooseFileDialog()V

    :cond_6
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lnet/aihelp/utils/ToastUtil;->showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lnet/aihelp/ui/helper/AttachmentDataProvider;->getIntentForMedia(Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/core/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->goBack()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->getInstance()Lnet/aihelp/core/util/permission/AIHelpPermissions;

    move-result-object p1

    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    aget p2, p3, v0

    if-nez p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/permission/AIHelpPermissions;->onRequestPermissionsResult(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lnet/aihelp/core/ui/BaseFragment;->onResume()V

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v2, 0x3ea

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
