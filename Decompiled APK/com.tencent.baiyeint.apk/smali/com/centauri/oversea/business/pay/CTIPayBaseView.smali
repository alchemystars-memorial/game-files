.class public interface abstract Lcom/centauri/oversea/business/pay/CTIPayBaseView;
.super Ljava/lang/Object;


# virtual methods
.method public abstract callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V
.end method

.method public abstract callBackLoginError()V
.end method

.method public abstract callBackSuccess(Lcom/centauri/oversea/business/pay/CTIResponse;)V
.end method

.method public abstract dismissWaitDialog()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getOrder()Lcom/centauri/oversea/business/pay/CTIOrder;
.end method

.method public abstract getOrderKey()I
.end method

.method public abstract showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V
.end method

.method public abstract showSandboxDialog()V
.end method

.method public abstract showWaitDialog()V
.end method
