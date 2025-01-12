.class public Lcom/centauri/oversea/business/pay/CTIOrder;
.super Ljava/lang/Object;


# instance fields
.field public final callBack:Lcom/centauri/oversea/api/ICTICallBack;

.field public final request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/api/ICTICallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    iput-object p2, p0, Lcom/centauri/oversea/business/pay/CTIOrder;->callBack:Lcom/centauri/oversea/api/ICTICallBack;

    return-void
.end method
