.class public Lcom/centauri/oversea/business/pay/CTIProxyActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/centauri/oversea/business/pay/CTIPayBaseView;


# static fields
.field public static final TAG:Ljava/lang/String; = "CTIProxyActivity"


# instance fields
.field private mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

.field private mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

.field private orderKey:I

.field private uiManager:Lo/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    return-void
.end method

.method public static synthetic access$000(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)I
    .locals 0

    iget p0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    return p0
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lo/v;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    return-object p0
.end method

.method private createChannel()Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
    .locals 2

    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->getOrder()Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lk/c$b;->a:Lk/c;

    invoke-virtual {v1}, Lk/c;->c()Lcom/centauri/oversea/business/pay/ChannelHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/centauri/oversea/business/pay/ChannelHelper;->createPayChannel(Ljava/lang/String;)Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 2

    sget-object v0, Lk/c$b;->a:Lk/c;

    iget v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    invoke-virtual {v0, v1, p1}, Lk/c;->b(ILcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public callBackLoginError()V
    .locals 4

    sget-object v0, Lk/c$b;->a:Lk/c;

    iget v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    const-string v2, "APPayManager"

    const-string v3, "callBackLoginError()"

    invoke-static {v2, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk/c;->d(I)Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/centauri/oversea/business/pay/CTIOrder;->callBack:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v2}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayNeedLogin()V

    invoke-virtual {v0, v1}, Lk/c;->g(I)V

    :cond_0
    const/4 v1, -0x1

    const-string v2, "CentauriPayNeedLogin"

    invoke-virtual {v0, v1, v2}, Lk/c;->e(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public callBackSuccess(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 1

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;-><init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissWaitDialog()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/v;->a()V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public getOrder()Lcom/centauri/oversea/business/pay/CTIOrder;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    return-object v0
.end method

.method public getOrderKey()I
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->handleActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "CTIProxyActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lo/h;->a(Landroid/view/Window;)V

    const-string/jumbo p1, "start_proxy_activity"

    invoke-static {p1}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "order_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->orderKey:I

    sget-object v0, Lk/c$b;->a:Lk/c;

    invoke-virtual {v0, p1}, Lk/c;->d(I)Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    if-eqz p1, :cond_1

    new-instance p1, Lo/v;

    invoke-direct {p1, p0}, Lo/v;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->createChannel()Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->init(Lcom/centauri/oversea/business/pay/CTIPayBaseView;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->startPayCheckEnv()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 v0, -0x3

    const-string v1, ""

    const-string v2, "Wrong assign pay channel."

    invoke-direct {p1, v0, v1, v2}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    :goto_0
    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string v0, "sdk.oversea.enter"

    const-string v1, "name=enterPay"

    invoke-virtual {p1, v0, v1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lo/v;->b:Lo/l;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lo/v;->b:Lo/l;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iput-object v1, v0, Lo/v;->b:Lo/l;

    iget-object v2, v0, Lo/v;->c:Lo/l;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lo/v;->c:Lo/l;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iput-object v1, v0, Lo/v;->c:Lo/l;

    invoke-virtual {v0}, Lo/v;->a()V

    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    :cond_2
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->release()V

    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mPresenter:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    :cond_3
    const-string v0, "CTIProxyActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 p2, -0x2

    invoke-direct {p1, p2}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->mOrder:Lcom/centauri/oversea/business/pay/CTIOrder;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gwallet"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gw_showdialog"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    const-string v0, "gw_first_screen_showdialog"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    :cond_0
    return-void
.end method

.method public showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;-><init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/centauri/oversea/comm/GlobalData;->showPayResult()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v1}, Lo/v$a;->callback()V

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lo/v;->c:Lo/l;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lo/v;->a:Landroid/content/Context;

    new-instance v2, Lo/l$a;

    invoke-direct {v2, p2}, Lo/l$a;-><init>(Landroid/content/Context;)V

    const-string v3, "error"

    iput-object v3, v2, Lo/l$a;->b:Ljava/lang/String;

    iput-object p1, v2, Lo/l$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, v2, Lo/l$a;->f:Z

    const-string/jumbo p1, "unipay_sure"

    invoke-static {p2, p1}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lo/t;

    invoke-direct {p2, v1}, Lo/t;-><init>(Lo/v$a;)V

    iput-object p1, v2, Lo/l$a;->d:Ljava/lang/String;

    iput-object p2, v2, Lo/l$a;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2}, Lo/l$a;->a()Lo/l;

    move-result-object p1

    iput-object p1, v0, Lo/v;->c:Lo/l;

    new-instance p2, Lo/u;

    invoke-direct {p2, v1}, Lo/u;-><init>(Lo/v$a;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p1, v0, Lo/v;->c:Lo/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const-string p1, "MUIManager"

    const-string/jumbo p2, "showErrorMsg()"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showSandboxDialog()V
    .locals 9

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/centauri/oversea/business/pay/CTIProxyActivity$3;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity$3;-><init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)V

    new-instance v2, Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;-><init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)V

    iget-object v3, v0, Lo/v;->b:Lo/l;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.centauri.debugview.View.GoogleBillingActivity"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "APCommMethod"

    const-string v5, "createReflectObject(): reflect exception."

    invoke-static {v4, v5}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    :goto_0
    iget-object v5, v0, Lo/v;->a:Landroid/content/Context;

    new-instance v6, Lo/l$a;

    invoke-direct {v6, v5}, Lo/l$a;-><init>(Landroid/content/Context;)V

    const-string/jumbo v7, "unipay_hints"

    invoke-static {v5, v7}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lo/l$a;->b:Ljava/lang/String;

    iget-object v5, v0, Lo/v;->a:Landroid/content/Context;

    const-string/jumbo v7, "unipay_no_charge_hints"

    invoke-static {v5, v7}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lo/l$a;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-boolean v5, v6, Lo/l$a;->f:Z

    iget-object v7, v0, Lo/v;->a:Landroid/content/Context;

    const-string/jumbo v8, "unipay_sure"

    invoke-static {v7, v8}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lo/v;->a:Landroid/content/Context;

    const-string/jumbo v8, "unipay_debug"

    invoke-static {v3, v8}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v8, Lo/r;

    invoke-direct {v8, v0, v1, v4}, Lo/r;-><init>(Lo/v;Lo/v$a;Ljava/lang/Object;)V

    iput-object v7, v6, Lo/l$a;->d:Ljava/lang/String;

    iput-object v3, v6, Lo/l$a;->e:Ljava/lang/String;

    iput-object v8, v6, Lo/l$a;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6}, Lo/l$a;->a()Lo/l;

    move-result-object v1

    iput-object v1, v0, Lo/v;->b:Lo/l;

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, v0, Lo/v;->b:Lo/l;

    new-instance v3, Lo/s;

    invoke-direct {v3, v2}, Lo/s;-><init>(Lo/v$a;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, v0, Lo/v;->b:Lo/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "MUIManager"

    const-string/jumbo v1, "showSandboxDialog()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public showWaitDialog()V
    .locals 5

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->uiManager:Lo/v;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->showLoading()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lo/v;->d:Lo/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lo/v;->a:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "isLoadingCancelable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x1

    :goto_0
    new-instance v3, Lo/c;

    invoke-direct {v3, v1, v2}, Lo/c;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v0, Lo/v;->d:Lo/c;

    iget-object v1, v0, Lo/v;->a:Landroid/content/Context;

    const-string/jumbo v2, "unipay_waiting"

    invoke-static {v1, v2}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/c;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lo/v;->d:Lo/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "MUIManager"

    const-string/jumbo v1, "showLoading()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
