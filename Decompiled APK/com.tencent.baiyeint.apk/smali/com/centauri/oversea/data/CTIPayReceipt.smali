.class public Lcom/centauri/oversea/data/CTIPayReceipt;
.super Ljava/lang/Object;


# instance fields
.field public basePlanId:Ljava/lang/String;

.field public first_currency_type:Ljava/lang/String;

.field public gw_pricingPhases:Ljava/lang/String;

.field public gw_reprovide_version:Ljava/lang/String;

.field public gw_version:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public payChannel:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public receipt:Ljava/lang/String;

.field public receipt_sig:Ljava/lang/String;

.field public second_amt:Ljava/lang/String;

.field public second_currency_type:Ljava/lang/String;

.field public sku:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt_sig:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->orderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->first_currency_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_amt:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->basePlanId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->gw_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->gw_pricingPhases:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->gw_reprovide_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    return-object v0
.end method
