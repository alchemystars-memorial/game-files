.class Lcom/centauri/oversea/business/pay/CTIPayModel$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/pay/CTIPayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/pay/CTIPayModel;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg/h;)V
    .locals 5

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v1, p1, Lg/h;->c:Ljava/lang/String;

    const/16 v2, 0xbd0

    const/4 v3, -0x4

    const-string v4, "Network Exception"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1400(Lcom/centauri/oversea/business/pay/CTIPayModel;IILjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrder onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lg/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lg/h;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APPayModel"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Lg/h;)V
    .locals 3

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object p1, p1, Lg/h;->c:Ljava/lang/String;

    const/16 v1, 0xbc9

    const-string v2, "Order network cancel"

    invoke-static {v0, v1, p1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p1, "APPayModel"

    const-string v0, "getOrder onStop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lg/h;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Lg/h;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOrder onSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lg/h;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "APPayModel"

    invoke-static {v4, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const/16 v3, 0x3fa

    if-eq v2, v3, :cond_2

    const/16 v3, 0x472

    if-eq v2, v3, :cond_1

    const/16 v3, 0x479

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/16 v3, 0xbd0

    iget-object v4, v0, Lg/h;->c:Ljava/lang/String;

    iget-object v0, v0, Lg/h;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v0, Lg/h;->c:Ljava/lang/String;

    iget-object v0, v0, Lg/h;->b:Ljava/lang/String;

    invoke-static {v3, v2, v4, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1200(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v0, Lg/h;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "order"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/16 v5, 0xbd0

    iget-object v6, v0, Lg/h;->c:Ljava/lang/String;

    const/16 v7, 0x472

    const-string v2, "copywrite_format"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "copywrite_params_list"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lg/h;->b:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    iget-object v11, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/16 v12, 0xbd0

    iget-object v13, v0, Lg/h;->c:Ljava/lang/String;

    const/16 v14, 0x472

    iget-object v0, v0, Lg/h;->b:Ljava/lang/String;

    const-string v15, ""

    const-string v16, ""

    move-object/from16 v17, v0

    invoke-static/range {v11 .. v17}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1100(Lcom/centauri/oversea/business/pay/CTIPayModel;)V

    goto/16 :goto_0

    :cond_3
    move-object v2, v0

    check-cast v2, Lq/k;

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v2, Lq/k;->g:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$102(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v2, Lq/k;->h:Lorg/json/JSONObject;

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$202(Lcom/centauri/oversea/business/pay/CTIPayModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v2, Lq/k;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$302(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v2, Lq/k;->j:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$402(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v2, Lq/k;->k:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$502(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v2, Lq/k;->l:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$602(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v2, v2, Lq/k;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$702(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/16 v3, 0xbcf

    iget-object v0, v0, Lg/h;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "offerid"

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v3

    iget-object v3, v3, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "productid"

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "productname"

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$600(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "price"

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$800(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "paychannel"

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "currency"

    iget-object v3, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$900(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/centauri/oversea/business/pay/CTIPayModel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1002(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
