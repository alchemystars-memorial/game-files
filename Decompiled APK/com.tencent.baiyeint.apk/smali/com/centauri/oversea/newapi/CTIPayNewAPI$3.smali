.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/api/ICTINetCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->net(Lcom/centauri/oversea/newapi/params/NetParams;Lcom/centauri/oversea/api/ICTINetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field public final val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/api/ICTINetCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string p2, "net"

    invoke-static {p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=net&reqType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.centauri.api.resp"

    invoke-virtual {v0, p2, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string p2, "net"

    invoke-static {p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetStop(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->val$callback:Lcom/centauri/oversea/api/ICTINetCallBack;

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetStop(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$3;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string v0, "net"

    invoke-static {p1, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method
