.class public Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;
.super Landroid/app/Service;


# static fields
.field public static b:Ljava/lang/String; = ""


# instance fields
.field public a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;)V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    invoke-direct {v2}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;-><init>()V

    const-string v3, "idcInfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setIDCInfo(Ljava/lang/String;)V

    const-string v3, "goodsZoneid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setGoodsZoneID(Ljava/lang/String;)V

    const-string v3, "openKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setOpenKey(Ljava/lang/String;)V

    const-string v3, "pf"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setPF(Ljava/lang/String;)V

    const-string v3, "pfKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setPFKey(Ljava/lang/String;)V

    const-string v3, "sessionId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setSessionID(Ljava/lang/String;)V

    const-string v3, "sessionType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->setSessionType(Ljava/lang/String;)V

    new-instance v3, Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    invoke-direct {v3}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;-><init>()V

    const-string v4, "env"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setEnv(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v3

    const-string v4, "idc"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setIDC(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v3

    const-string v4, "offerid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOfferID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v3

    const-string v4, "openid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setOpenID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v3

    const-string/jumbo v4, "zoneid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setZoneID(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->setExtra(Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;)Lcom/centauri/oversea/newapi/params/InitParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams$Builder;->build()Lcom/centauri/oversea/newapi/params/InitParams;

    move-result-object v2

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setLogEnable(Z)V

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->setApplicationContext(Landroid/content/Context;)V

    const-string v3, "DetectService"

    const-string/jumbo v4, "start to init"

    invoke-static {v3, v4}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/centauri/oversea/comm/GlobalData;->init(Lcom/centauri/oversea/newapi/params/InitParams;)V

    const-string v3, "gdprSwitch"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lo/i;->a:Z

    sget-object v3, Lr/e$a;->a:Lr/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lr/e;->a:Landroid/content/Context;

    const-string v4, "heartbeat"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lr/e;->c:J

    const-string v0, "heartbeat period: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v3, Lr/e;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HeartBeat"

    invoke-static {v4, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams;->getOfferID()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/params/InitParams;->getOpenID()Ljava/lang/String;

    iget-wide v4, v3, Lr/e;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    iget-boolean v0, v3, Lr/e;->d:Z

    if-nez v0, :cond_1

    iget-object v0, v3, Lr/e;->b:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v3, Lr/e;->b:Ljava/util/Timer;

    :cond_1
    iget-object v4, v3, Lr/e;->b:Ljava/util/Timer;

    if-eqz v4, :cond_2

    iget-boolean v0, v3, Lr/e;->d:Z

    if-nez v0, :cond_2

    iput-boolean v1, v3, Lr/e;->d:Z

    new-instance v5, Lr/c;

    invoke-direct {v5}, Lr/c;-><init>()V

    const-wide/16 v6, 0x0

    iget-wide v8, v3, Lr/e;->c:J

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "detect_domain"

    invoke-static {v0, v2}, Lo/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sput-object v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectDomainCgi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitDetectService"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lp/f;->a()Lp/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DnsManager"

    const-string v2, "prefetchDnsDefault"

    invoke-static {v1, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lp/f;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lp/e;

    invoke-direct {v2, v0}, Lp/e;-><init>(Lp/f;)V

    const-string/jumbo v0, "thread-dns-prefetchDnsDefault"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_5
    :goto_1
    const-string p1, "Detect Service"

    const-string p2, "get Start Command with null intent"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method
