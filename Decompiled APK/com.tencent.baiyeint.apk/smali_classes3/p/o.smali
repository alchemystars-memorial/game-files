.class public final Lp/o;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lp/o;->a:Ljava/lang/String;

    iput-object v0, p0, Lp/o;->b:Ljava/lang/String;

    const-string v1, "save"

    iput-object v1, p0, Lp/o;->c:Ljava/lang/String;

    iput-object v0, p0, Lp/o;->d:Ljava/lang/String;

    iput-object v0, p0, Lp/o;->e:Ljava/lang/String;

    iput-object v0, p0, Lp/o;->f:Ljava/lang/String;

    iput-object v0, p0, Lp/o;->g:Ljava/lang/String;

    iput-object v0, p0, Lp/o;->h:Ljava/lang/String;

    iput-object v0, p0, Lp/o;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp/o;->j:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lp/o;
    .locals 2

    new-instance v0, Lp/o;

    invoke-direct {v0}, Lp/o;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->goodsZoneID:Ljava/lang/String;

    iput-object v1, v0, Lp/o;->i:Ljava/lang/String;

    instance-of v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lp/o;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lp/o;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->isAutoPay()Z

    move-result v1

    iput-boolean v1, v0, Lp/o;->j:Z

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lp/o;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lp/o;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lp/o;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getAppExtends()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lp/o;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getDrmInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lp/o;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lp/o;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getGoodsZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getGoodsZoneId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lp/o;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/centauri/oversea/newapi/params/NetParams;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/centauri/oversea/newapi/params/NetParams;

    iget-object p0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->drmInfo:Ljava/lang/String;

    iput-object p0, v0, Lp/o;->b:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method
