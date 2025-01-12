.class Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackSuccess(Lcom/centauri/oversea/business/pay/CTIResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

.field public final val$response:Lcom/centauri/oversea/business/pay/CTIResponse;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    iput-object p2, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->val$response:Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget-object v0, Lk/c$b;->a:Lk/c;

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-static {v1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->access$000(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->val$response:Lcom/centauri/oversea/business/pay/CTIResponse;

    const-string v3, "APPayManager"

    const-string v4, "callBackSuccess()"

    invoke-static {v3, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk/c;->d(I)Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    iget-object v3, v4, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v3}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getAppExtends()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/business/pay/CTIResponse;->setAppExtends(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/centauri/oversea/business/pay/CTIOrder;->callBack:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v3, v2}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-virtual {v0, v1}, Lk/c;->g(I)V

    :cond_0
    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result v1

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lk/c;->e(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->val$response:Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-boolean v0, v0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->access$100(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lo/v;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->access$100(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lo/v;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->showPayResult()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lo/v;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v0, Lo/v;->a:Landroid/content/Context;

    const-string/jumbo v3, "unipay_abroad_tips_suc"

    invoke-static {v2, v3}, Lo/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "unipay_id_succnum"

    invoke-static {v2, v3}, Lo/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "unipay_id_name"

    invoke-static {v3, v4}, Lo/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, v0, Lo/v;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
