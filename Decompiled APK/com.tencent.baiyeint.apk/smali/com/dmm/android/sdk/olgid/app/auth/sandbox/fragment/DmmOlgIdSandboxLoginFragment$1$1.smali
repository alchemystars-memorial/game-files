.class Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;
.super Ljava/lang/Object;
.source "DmmOlgIdSandboxLoginFragment.java"

# interfaces
.implements Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

.field final synthetic val$isSaveLoginInfo:Z

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->val$userId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->val$isSaveLoginInfo:Z

    iput-object p4, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParserError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iget-object p1, p1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_sandbox_login_parse_failed:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1$3;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1$3;-><init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;)V
    .locals 4

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->getGrade()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iget-object p1, p1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_sandbox_login_grade_error:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->getInstance(Landroid/content/Context;)Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->saveUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->saveUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->getSecureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/auth/sandbox/DmmOlgIdSandboxAuthAgent;->saveSecureId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;->getSecureId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/dmm/android/auth/DmmAuthData;->createInstance(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iget-object p1, p1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->val$isSaveLoginInfo:Z

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->val$password:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->access$500(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iget-object p1, p1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;->getError()Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-interface {p1}, Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse$Error;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string/jumbo p1, "\u30a8\u30e9\u30fc\u30b3\u30fc\u30c9\uff1a%d\n%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iget-object v0, v0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->access$600(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iget-object p1, p1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->access$600(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iget-object p1, p1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1$1;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1$1;-><init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onVolleyError(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 2

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/VolleyError;->printStackTrace()V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;->this$1:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;

    iget-object p1, p1, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1;->this$0:Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_sandbox_login_connection_failed:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1$2;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1$2;-><init>(Lcom/dmm/android/sdk/olgid/app/auth/sandbox/fragment/DmmOlgIdSandboxLoginFragment$1$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
