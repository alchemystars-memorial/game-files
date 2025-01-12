.class public Lcom/uqm/crashsight/proguard/g;
.super Ljava/lang/Object;
.source "CrashSight"


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I[B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 10

    const-string v0, "D4"

    const-string v1, "G15"

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v2

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setPlatformId(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setProdId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setBundleId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setVersion(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setChannel(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setSdkVer(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-virtual {v6, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setCmd(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p1, ""

    if-nez p2, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setSBuffer(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setModel(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setOsVer(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->clearReserved()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setSessionId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    iget-wide v8, v3, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:J

    invoke-virtual {v6, v8, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setStrategylastUpdateTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setUserSetDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setCachedUuid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setCurrentVersionUuid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setApn(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setUploadTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setImei(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setQimei(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setImsi(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setMac(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setAndroidId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setNetworkType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "com.uqm.crashsight"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->setSdkId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "A26"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->B()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "A62"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->N()Z

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "A63"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->O()Z

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "F11"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->A:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "F12"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->z:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "D3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->k:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    sget-object p2, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/a;

    iget-object v8, v3, Lcom/uqm/crashsight/a;->versionKey:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/uqm/crashsight/a;->version:Ljava/lang/String;

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/uqm/crashsight/a;->versionKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/uqm/crashsight/a;->version:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p1}, Lcom/uqm/crashsight/proguard/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "sessionUUID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/d;->a()Lcom/uqm/crashsight/crashreport/common/info/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, p2, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "traceUUID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/d;->a()Lcom/uqm/crashsight/crashreport/common/info/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, p2, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p2, "matchUUID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/d;->a()Lcom/uqm/crashsight/crashreport/common/info/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, p2, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cloudStrategy is %s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    const-string p2, "STRATEGY_INFOS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p2, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const-string p1, "HarmonyVersion"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p1, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    const-string p0, "0"

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->G()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p2, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putReserved(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return-object v4

    :cond_8
    :goto_3
    new-array p0, v5, [Ljava/lang/Object;

    const-string p1, "Can not create request pkg for parameters is invalid."

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4
.end method

.method public static a([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 2

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    move-result-object v2

    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    invoke-virtual {v2, v3, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setStartTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setSessionId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setProceName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setUserId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    move-result-object v2

    if-nez v1, :cond_4

    move-object v1, v4

    :cond_4
    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setGatewayIp(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    move-result-object v1

    iget v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setColdStart(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    move-result-object v1

    iget v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    const/4 v5, 0x2

    if-eq v2, v4, :cond_b

    const/4 v6, 0x4

    if-eq v2, v5, :cond_a

    const/4 v7, 0x3

    if-eq v2, v7, :cond_9

    if-eq v2, v6, :cond_8

    const/4 v6, 0x5

    if-eq v2, v6, :cond_7

    iget v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    const/16 v6, 0xa

    if-lt v2, v6, :cond_6

    iget v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    const/16 v6, 0x14

    if-ge v2, v6, :cond_6

    iget v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setStartType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    goto :goto_4

    :cond_6
    new-array v1, v4, [Ljava/lang/Object;

    iget p0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "unknown uinfo type %d "

    invoke-static {p0, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setStartType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v7}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setStartType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setStartType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    goto :goto_4

    :cond_a
    invoke-virtual {v1, v6}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setStartType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->setStartType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    :goto_4
    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->clearValueMap()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->p:I

    if-ltz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "C01"

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    :cond_c
    iget v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->q:I

    if-ltz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "C02"

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    :cond_d
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "C03_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "C04_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->l:Z

    xor-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "A36"

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F02"

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F03"

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F04"

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F05"

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F06"

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "F10"

    invoke-virtual {v1, v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;->getStartType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;->getValueMapCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "summary type %d vm:%d"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a(Ljava/util/List;I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;",
            ">;I)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->x()Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setProceName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/g;->a(Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->addAllList(Ljava/lang/Iterable;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/c;->i()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->addAllUpTimeList(Ljava/lang/Iterable;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const-string p0, "[attach] upload [%d] upTimes"

    invoke-static {p0, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A7"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A6"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A5"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->s()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A2"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->t()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A1"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A24"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->u()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A17"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A15"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->A()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "A13"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->P()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "pss"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->Q()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "vss"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "F08"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "F09"

    invoke-virtual {v2, v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->H()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "C04_"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    goto :goto_1

    :cond_4
    if-eq p1, v3, :cond_6

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    const-string p1, "unknown up type %d "

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_5
    invoke-virtual {v2, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    :goto_2
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setEncodeName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setIRequestId(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    const-string v1, "RqdServer"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setSServantName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    const-string v1, "sync"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setSFuncName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setRequest(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object p0

    const-string v0, "encode2SendDatas successful"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
