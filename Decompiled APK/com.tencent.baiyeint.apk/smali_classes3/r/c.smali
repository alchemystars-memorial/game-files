.class public final Lr/c;
.super Ljava/util/TimerTask;


# instance fields
.field public final a:Lr/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lr/e$a;->a:Lr/e;

    iput-object v0, p0, Lr/c;->a:Lr/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lr/c;->a:Lr/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lr/d;

    invoke-direct {v2}, Lr/d;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const-string v2, "sys_id"

    const-string v3, "3_7"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cmd"

    const-string v3, "ReportData"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "req_src"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uin_type"

    const-string v3, "game"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "scene"

    const-string v3, "login"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_os"

    const-string v4, "android"

    invoke-virtual {v1, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "action"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v3, "offer_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v3, "uin"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdk_version"

    const-string v3, "4.06.081"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lo/i;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lr/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_guid"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lr/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/i;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi_ssid"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lr/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/g;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_type"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sys_version"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "manufacturer"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "device"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "showModel"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "user_ip"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tran_time"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lo/g;->p(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const-string v3, ""

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/g;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sign="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lp/b;

    invoke-direct {v0}, Lp/b;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp/b;->c(Ljava/lang/String;)V

    return-void
.end method
