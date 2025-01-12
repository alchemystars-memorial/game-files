.class public Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity;
.super Landroid/app/Activity;
.source "INTLInternalAuthActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-intlgame-auth-dmm-activity-INTLInternalAuthActivity()V
    .locals 12

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->LOGIN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent$Creator;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE:Ljava/lang/String;

    sget v2, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->FRAGMENT_TYPE_LOGIN:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v1, 0xee42a

    invoke-virtual {p0, v0, v1}, Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    const/16 p1, 0x270f

    const-string p2, "DMM login failed"

    if-eqz p3, :cond_2

    const-string v0, "error_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tigercui]login failed, error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "error_message"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tigercui]login failed, error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    move-object p2, v0

    :cond_1
    const-string v0, "failing_url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tigercui]login failed, failed url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :cond_2
    move v4, p1

    move-object v5, p2

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p1

    iget-object v0, p1, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    const/16 v1, 0x65

    const/16 v2, 0x270f

    const-string v3, "login failed"

    invoke-static/range {v0 .. v5}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p1

    iget-object v0, p1, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    const/16 v1, 0x65

    const/4 v2, 0x2

    const/4 v4, 0x2

    const-string v3, "Cancelled"

    const-string v5, "Cancelled"

    invoke-static/range {v0 .. v5}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "dmm plugin login successfully."

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p1

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p2

    iget-object p2, p2, Lcom/intlgame/dmm/DmmTaskManager;->loginParams:Lcom/intlgame/api/INTLBaseParams;

    invoke-virtual {p1, p2}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchPublishSessionTask(Lcom/intlgame/api/INTLBaseParams;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/intlgame/dmm/R$layout;->activity_intl_internal_auth:I

    invoke-virtual {p0, p1}, Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity$$ExternalSyntheticLambda0;-><init>(Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
