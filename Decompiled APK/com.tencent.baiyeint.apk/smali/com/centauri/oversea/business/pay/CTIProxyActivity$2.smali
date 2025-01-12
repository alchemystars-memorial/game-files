.class Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lo/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/pay/CTIProxyActivity;->showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V
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

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    iput-object p2, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;->val$response:Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$2;->val$response:Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return-void
.end method
