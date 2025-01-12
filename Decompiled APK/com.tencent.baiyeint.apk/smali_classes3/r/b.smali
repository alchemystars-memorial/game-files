.class public final Lr/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOfferID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "offerid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOpenID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getIDCInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "idcInfo"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getGoodsZoneID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "goodsZoneid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getOpenKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openKey"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getPf()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pf"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getPfKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pfKey"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getSessionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getEnv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "env"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getIDC()Ljava/lang/String;

    move-result-object v2

    const-string v3, "idc"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getZoneID()Ljava/lang/String;

    move-result-object p1

    const-string v2, "zoneid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-wide v2, p1, Lcom/centauri/oversea/comm/GlobalData;->heartBeat:J

    const-string p1, "heartbeat"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-boolean p1, Lo/i;->a:Z

    const-string v2, "gdprSwitch"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
