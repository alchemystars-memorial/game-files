.class Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;->getProductInfo(Landroid/content/Context;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIabSetupFinished:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APProductInfo_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;

    invoke-static {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;

    invoke-static {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;->access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;

    invoke-static {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;->access$200(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-1"

    invoke-static {v0, v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;->access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
