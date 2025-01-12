.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->reProvide(Lcom/centauri/oversea/newapi/response/ICTICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field public final val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$2;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$2;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$2;->val$callback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=reprovide&result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&info="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.centauri.api.resp"

    invoke-virtual {v0, p2, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$2;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    const-string p2, "reprovide"

    invoke-static {p1, p2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$300(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V

    return-void
.end method
