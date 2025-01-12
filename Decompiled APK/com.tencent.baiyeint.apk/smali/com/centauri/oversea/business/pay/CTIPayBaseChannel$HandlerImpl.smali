.class public Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerImpl"
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thread id:"

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-boolean v1, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dropMessage:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, ""

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msgErrCode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "payToBePaid"

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "loginInvalid"

    invoke-virtual {p1, v0, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "login expired"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    goto/16 :goto_7

    :pswitch_3
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string/jumbo v1, "unknown"

    invoke-virtual {p1, v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "payUnknown"

    invoke-static {p1, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    new-instance v1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const-string/jumbo v4, "unknow result,check later"

    invoke-direct {v1, v3, v0, v4}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "payErr"

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v1, "paySucc"

    invoke-virtual {v0, v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "paySuccess"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->isSdkProvide()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$500(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;I)V

    goto/16 :goto_7

    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$300(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getGw_version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->newProvide(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->provide(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_6

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "postpayErr"

    invoke-virtual {v0, v3, v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "postPayErr"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_6

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v1, v1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v1, "errorConsume"

    invoke-virtual {p1, v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lo/a;->e(Landroid/content/Context;)Z

    move-result p1

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showErrDialog is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideRetMes()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v5, v5, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideRetMes()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v0, v5}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$600(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto/16 :goto_7

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    new-instance v1, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-object v4, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideSdkRet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v5, v5, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideRetMes()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v0, v5}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    new-instance v1, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-object v4, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideRetMes()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v0, v4}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto/16 :goto_7

    :cond_5
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v1, "postpaySucc"

    invoke-virtual {v0, v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "postPaySuccess"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_6

    :goto_1
    iget-object p1, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getNum()I

    move-result p1

    :cond_6
    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$500(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;I)V

    goto/16 :goto_7

    :pswitch_8
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume()Z

    move-result v0

    const-string v1, "&receipt="

    const-string v3, "provideErr"

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "msg=errorConsume&billno="

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v4, v4, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getBillNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v1, v1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideReceipt()Lcom/centauri/oversea/data/CTIPayReceipt;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v4, "msg="

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&billno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v5, v5, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getBillNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v1, v1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideReceipt()Lcom/centauri/oversea/data/CTIPayReceipt;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideReceipt()Lcom/centauri/oversea/data/CTIPayReceipt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->onSaveReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V

    goto/16 :goto_5

    :pswitch_9
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "provideSucc"

    invoke-virtual {p1, v0, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "provideSuccess"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->postPay()V

    goto/16 :goto_7

    :pswitch_a
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->pay(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto/16 :goto_7

    :pswitch_b
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "orderErr"

    goto :goto_4

    :pswitch_c
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "orderSucc"

    invoke-virtual {p1, v0, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "orderSuccess"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v1, v1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getMInfo()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_3

    :pswitch_d
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "prepayErr"

    goto :goto_4

    :pswitch_e
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v1, "prepaySucc"

    invoke-virtual {v0, v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepaySuccess"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->needOrder()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->order(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_8
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->pay(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto/16 :goto_7

    :pswitch_f
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "initErr"

    :goto_4
    invoke-virtual {v0, v3, v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V

    goto :goto_7

    :pswitch_10
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "initSucc"

    invoke-virtual {p1, v0, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "initSuccess"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->prePay()V

    goto :goto_7

    :pswitch_11
    const-string/jumbo p1, "show_loading"

    invoke-static {p1}, Lo/q;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$300(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    invoke-static {p1}, Lo/q;->c(Ljava/lang/String;)J

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->init()V

    goto :goto_7

    :pswitch_12
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "payCancel"

    invoke-static {v1, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v1, v1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "cancel"

    invoke-virtual {v1, v4, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, -0x2

    :goto_6
    new-instance v4, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v4, v3, v0, p1}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    :goto_7
    return v2

    :cond_a
    :goto_8
    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const-string v1, "handleMessage error"

    invoke-direct {p1, v3, v4, v1}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return v2

    :pswitch_data_0
    .packed-switch 0xbc9
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->handleMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->handleMessage(Landroid/os/Message;)Z

    return-void
.end method
