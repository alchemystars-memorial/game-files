.class public final Lq/j;
.super Lp/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final y()V
    .locals 4

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "/v1/r/%s/mobile_mp_info"

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "https"

    invoke-virtual {p0, v1, v0}, Lp/a;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final z()Lq/j;
    .locals 4

    invoke-virtual {p0}, Lq/j;->y()V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    const-string v1, "APMpReq"

    if-nez v0, :cond_0

    const-string v0, "Request is null !!!"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-super {p0}, Lp/a;->w()V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v2, "openid"

    invoke-virtual {p0, v2, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    const-string v2, "pf"

    invoke-virtual {p0, v2, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    const-string v2, "pfkey"

    invoke-virtual {p0, v2, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "format"

    const-string v2, "json"

    invoke-virtual {p0, v0, v2}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getNetToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {p0, v2, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "drm_info"

    invoke-virtual {p0, v3, v2}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drm_info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    const-string v1, "openkey"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    const-string v1, "zoneid"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    const-string v1, "session_type"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkversion"

    const-string v1, "4.06.081"

    invoke-virtual {p0, v0, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_len"

    const-string v1, "newkey"

    invoke-virtual {p0, v0, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lp/n$a;->a:Lp/n;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    iget-object v0, v0, Lp/n;->a:Lg/o;

    iget-object v0, v0, Lg/o;->b:Lh/a;

    invoke-virtual {v0, v2, v1}, Lh/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_time"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->a:Ljava/lang/String;

    const-string v1, "extend"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->g:Ljava/lang/String;

    const-string v1, "currency_type"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->d:Ljava/lang/String;

    const-string v1, "country"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->h:Ljava/lang/String;

    const-string v1, "pay_method"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->c:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lo/i;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xg_mid"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p0
.end method
