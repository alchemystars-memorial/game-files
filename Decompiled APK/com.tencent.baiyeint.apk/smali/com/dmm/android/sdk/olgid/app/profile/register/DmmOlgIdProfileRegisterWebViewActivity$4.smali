.class Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;
.super Ljava/lang/Object;
.source "DmmOlgIdProfileRegisterWebViewActivity.java"

# interfaces
.implements Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParserError(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_logical_error_title:I

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v2, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_user_check_fatal_error:I

    invoke-virtual {v1, v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    const-string v3, "fatal_error"

    invoke-static {v2, v0, v1, v3, p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$1100(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/api/mobile/DmmApiResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    instance-of v0, p1, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getErrorNo()I

    move-result v0

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_already_register_profile:I

    invoke-static {p1, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$500(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;I)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x3e8

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_user_check_fatal_error:I

    invoke-static {p1, v1, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$700(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;II)V

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_withdrawed_user:I

    invoke-static {p1, v1, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$700(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;II)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_black_status_user:I

    invoke-static {p1, v1, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$700(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;II)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$600(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_cannot_get_application_info:I

    invoke-static {p1, v1, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$700(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;II)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v0, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_logical_error_title:I

    invoke-virtual {p1, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_user_check_fatal_error:I

    invoke-virtual {v0, v1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    const/4 v2, 0x0

    const-string/jumbo v3, "unknown"

    invoke-static {v1, p1, v0, v3, v2}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$800(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onVolleyError(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p1, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_network_status_error:I

    iget v0, v0, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    invoke-static {p1, v1, v0}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$900(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_network_error_body:I

    invoke-static {v0, v1, p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$1000(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;ILjava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity$4;->this$0:Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    sget v1, Lcom/dmm/android/sdk/olgid/R$string;->dmm_olgid_sdk_network_error_body:I

    invoke-static {v0, v1, p1}, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;->access$1000(Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;ILjava/lang/Throwable;)V

    :goto_0
    return-void
.end method
