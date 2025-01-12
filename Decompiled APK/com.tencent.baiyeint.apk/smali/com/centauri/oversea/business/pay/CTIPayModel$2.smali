.class Lcom/centauri/oversea/business/pay/CTIPayModel$2;
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

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg/h;)V
    .locals 5

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v1, p1, Lg/h;->c:Ljava/lang/String;

    const/16 v2, 0xbd3

    const/16 v3, -0xbba

    const-string v4, "Network Exception"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1400(Lcom/centauri/oversea/business/pay/CTIPayModel;IILjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provide onFailure: "

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

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object p1, p1, Lg/h;->c:Ljava/lang/String;

    const/16 v1, 0xbc9

    const-string v2, "Provide network cancel"

    invoke-static {v0, v1, p1, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p1, "APPayModel"

    const-string v0, "provide onStop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lg/h;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lg/h;->a:I

    iget-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v1, Lg/h;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1502(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    move-object v4, v1

    check-cast v4, Lq/k;

    iget-object v5, v4, Lq/k;->n:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1602(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v4, v4, Lq/k;->p:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1702(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;

    const/16 v3, 0x1399

    if-ne v2, v3, :cond_0

    iget-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1802(Lcom/centauri/oversea/business/pay/CTIPayModel;Z)Z

    :cond_0
    if-eqz v2, :cond_3

    const/16 v3, 0x3fa

    if-eq v2, v3, :cond_2

    const/16 v3, 0x472

    if-eq v2, v3, :cond_1

    iget-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/16 v4, 0xbd3

    const/16 v5, -0xbb9

    iget-object v1, v1, Lg/h;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1500(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v1, v6}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1400(Lcom/centauri/oversea/business/pay/CTIPayModel;IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v1, Lg/h;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "provide"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/16 v6, 0xbd3

    iget-object v7, v1, Lg/h;->c:Ljava/lang/String;

    const/16 v8, 0x472

    const-string v3, "copywrite_format"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "copywrite_params_list"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lg/h;->b:Ljava/lang/String;

    invoke-static/range {v5 .. v11}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v12, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/16 v13, 0xbd3

    iget-object v14, v1, Lg/h;->c:Ljava/lang/String;

    const/16 v15, 0x472

    iget-object v1, v1, Lg/h;->b:Ljava/lang/String;

    const-string v16, ""

    const-string v17, ""

    move-object/from16 v18, v1

    invoke-static/range {v12 .. v18}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1100(Lcom/centauri/oversea/business/pay/CTIPayModel;)V

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/16 v4, 0xbd2

    iget-object v1, v1, Lg/h;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provide onSuccess: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;->this$0:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-static {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->access$1500(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPayModel"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
