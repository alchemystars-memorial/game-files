.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/api/ICTICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->pay(Landroid/app/Activity;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/api/ICTICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field public final val$callback:Lcom/centauri/oversea/api/ICTICallBack;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/api/ICTICallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;->val$callback:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;->val$callback:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    invoke-static {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$100(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    invoke-static {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$200(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)V

    :cond_0
    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v1, "name=pay&result="

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdk.centauri.api.resp"

    invoke-virtual {v0, v1, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string v0, "pay"

    invoke-static {p1, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriPayNeedLogin()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$1;->val$callback:Lcom/centauri/oversea/api/ICTICallBack;

    invoke-interface {v0}, Lcom/centauri/oversea/api/ICTICallBack;->CentauriPayNeedLogin()V

    return-void
.end method
