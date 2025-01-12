.class public Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;
.super Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final billingResult:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WrapperBillingResult"

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->billingResult:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resultCode()I
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public resultMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showSandboxErrTips()V
    .locals 4

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v0

    const-string v1, "Solution:"

    const-string v2, "\n"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nReason: Because you do not own the product, the consumption failed\n"

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Reason:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Already own the item, it may be caused by the failure of delivery after the last purchase of the item"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1, log out of the application, log in again, and try again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2, can\'t clear the google play store cache and try again"

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Reason 1:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Google play returns wrong content, maybe the phone has not opened the system pop-up permission, Xiaomi has not opened it by default"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Open the system pop-up permission of google play store in the settings, try again\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Reason 2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Fatal error occurred during API operation"

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nReason: The parameters provided to the API are invalid. This error may also indicate that the app is not properly signed or set up for in-app purchase billing in Google Play, or is not required in the list Permissions\n"

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nReason: The requested product cannot be purchased\n"

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nReason: The Billing API version is not supported by the requested type\n"

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nreason: network connection lost\n"

    goto :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nReason: the user pressed the return key or cancelled the dialog box\n"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WrapperBillingResult"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "resultCode|"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resultMsg|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifyErrCode()I
    .locals 2

    const-string/jumbo v0, "unifyGWErrCode(),gw origin error code: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WrapperBillingResult"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0x7d0

    goto :goto_0

    :pswitch_0
    const/16 v0, -0x7d9

    goto :goto_0

    :pswitch_1
    const/16 v0, -0x7d8

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x7d7

    goto :goto_0

    :pswitch_3
    const/16 v0, -0x7d6

    goto :goto_0

    :pswitch_4
    const/16 v0, -0x7d5

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unavailable on device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x7d3

    goto :goto_0

    :cond_0
    const/16 v0, -0x7d4

    goto :goto_0

    :pswitch_6
    const/16 v0, -0x7d2

    goto :goto_0

    :pswitch_7
    const/16 v0, -0x7d1

    goto :goto_0

    :cond_1
    const/16 v0, -0x7e0

    goto :goto_0

    :cond_2
    const/16 v0, -0x7df

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
