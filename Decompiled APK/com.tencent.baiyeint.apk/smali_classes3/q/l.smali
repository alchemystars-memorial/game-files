.class public final Lq/l;
.super Lp/a;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Z

.field public K:Ljava/lang/String;

.field public L:Lcom/centauri/oversea/data/CTIPayReceipt;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lp/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lq/l;->A:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/l;->J:Z

    return-void
.end method


# virtual methods
.method public final y()Lq/l;
    .locals 11

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    const-string v2, "local_test"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "test"

    const-string v3, "/v1/r/%s/mobile_overseas_common"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "https"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "http"

    goto :goto_0

    :cond_0
    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v6, v0}, Lp/a;->x(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    const-string v1, "APOverSeaCommReq"

    if-nez v0, :cond_2

    const-string v0, "Request is null !!!"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_2
    invoke-super {p0}, Lp/a;->w()V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v3, "openid"

    invoke-virtual {p0, v3, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    const-string v6, "pf"

    invoke-virtual {p0, v6, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    const-string v6, "pfkey"

    invoke-virtual {p0, v6, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    const-string v6, "zoneid"

    invoke-virtual {p0, v6, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "format"

    const-string v6, "json"

    invoke-virtual {p0, v0, v6}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_len"

    const-string v6, "newkey"

    invoke-virtual {p0, v0, v6}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lp/n$a;->a:Lp/n;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v6

    iget-object v6, v6, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v7

    iget-object v7, v7, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    iget-object v0, v0, Lp/n;->a:Lg/o;

    iget-object v0, v0, Lg/o;->b:Lh/a;

    invoke-virtual {v0, v7, v6}, Lh/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "key_time"

    invoke-virtual {p0, v6, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getNetToken()Ljava/lang/String;

    move-result-object v0

    const-string v6, "session_token"

    invoke-virtual {p0, v6, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->i:Ljava/lang/String;

    const-string v6, "goods_zoneid"

    invoke-virtual {p0, v6, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lo/i;->a:Z

    const-string v6, ""

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "xg_mid"

    if-eqz v0, :cond_3

    invoke-virtual {p0, v7, v6}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    const-string v3, "openkey"

    invoke-virtual {p0, v3, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    const-string v3, "session_id"

    invoke-virtual {p0, v3, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    const-string v3, "session_type"

    invoke-virtual {p0, v3, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkversion"

    const-string v3, "androidoversea_v4.06.081"

    invoke-virtual {p0, v0, v3}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq/l;->E:Ljava/lang/String;

    const-string v3, "buy_quantity"

    invoke-virtual {p0, v3, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq/l;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "type"

    if-nez v0, :cond_5

    iget-object v0, p0, Lq/l;->A:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->c:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v0, "version=3.0"

    goto :goto_3

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&version=3.0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "drm_info"

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq/l;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lq/l;->z:Ljava/lang/String;

    const-string v7, "currency_type"

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->d:Ljava/lang/String;

    const-string v7, "country"

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lq/l;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lq/l;->y:Ljava/lang/String;

    const-string v7, "service_code"

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "userip"

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "_goods_zoneid="

    const-string v9, "&"

    if-nez v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->i:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/g;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lp/a;->x:Lp/o;

    iget-object v7, v7, Lp/o;->i:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v7, "Extend reserv"

    invoke-static {v7, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v7, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "extend"

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iget-object v0, p0, Lq/l;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lq/l;->C:Ljava/lang/String;

    const-string v7, "pay_method"

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "productid"

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lq/l;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "amt"

    if-nez v0, :cond_f

    iget-object v0, p0, Lq/l;->B:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lq/l;->D:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "gw_amt="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lq/l;->D:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v8, p0, Lq/l;->M:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "gw_currency="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lq/l;->M:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "gw_packageName="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v8, p0, Lq/l;->N:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "basePlanId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lq/l;->N:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v8, p0, Lq/l;->O:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "gw_version="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lq/l;->O:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v8, p0, Lq/l;->P:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string v8, "gw_pricingPhases="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lq/l;->P:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v8, p0, Lq/l;->Q:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "gw_reprovide_version="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lq/l;->Q:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v8

    iget-object v8, v8, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v10, "dev"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v8

    iget-object v8, v8, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const-string v2, "sandbox=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v2, p0, Lq/l;->C:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lq/l;->C:Ljava/lang/String;

    const-string v8, "os_doku"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "from=doku_sdk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v2, p0, Lq/l;->R:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lq/l;->R:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v2, p0, Lp/a;->x:Lp/o;

    iget-object v2, v2, Lp/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v8, "wf_info"

    if-eqz v2, :cond_1b

    invoke-virtual {p0, v8, v6}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lo/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    const-string v2, "order"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lp/a;->x:Lp/o;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lp/o;->c:Ljava/lang/String;

    const-string v2, "unimonth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-object v0, v0, Lp/o;->c:Ljava/lang/String;

    const-string v2, "month"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    iget-object v0, p0, Lp/a;->x:Lp/o;

    iget-boolean v0, v0, Lp/o;->j:Z

    if-eqz v0, :cond_1d

    const-string v0, "2"

    goto :goto_7

    :cond_1d
    const-string v0, "0"

    :goto_7
    const-string v2, "producttype"

    invoke-virtual {p0, v2, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    const-string v2, "provide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lq/l;->L:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v0, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_amt:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lq/l;->L:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v4, v4, Lcom/centauri/oversea/data/CTIPayReceipt;->first_currency_type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lq/l;->L:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v4, v4, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "locale"

    invoke-virtual {p0, v4, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ar"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "ARS"

    goto :goto_8

    :cond_1f
    move-object v4, v6

    :goto_8
    const-string v7, "getDefaultCurrencyCode exception: "

    invoke-static {v7}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v4

    :goto_9
    const-string v1, "{\"country_code\":\""

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"currency_code\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"lang_code\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_locale"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq/l;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lq/l;->F:Ljava/lang/String;

    const-string v1, "billno"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lq/l;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lq/l;->G:Ljava/lang/String;

    const-string v1, "receipt"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lq/l;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lq/l;->H:Ljava/lang/String;

    const-string v1, "receipt_openid"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lq/l;->K:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq/l;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lq/l;->I:Ljava/lang/String;

    const-string v1, "receipt_sign"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq/l;->G:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lb/a;->l([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sig"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v1, "receipt_offer_id"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-boolean v0, p0, Lq/l;->J:Z

    const-string v1, "action"

    if-eqz v0, :cond_25

    const-string v0, "reprovide"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    invoke-virtual {p0, v1, v2}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_a
    sget-boolean v0, Lo/i;->a:Z

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/i;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "wifi_ssid"

    if-eqz v2, :cond_27

    invoke-virtual {p0, v3, v6}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_27
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-static {v0}, Lo/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_guid"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/i;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_type"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/i;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_product"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/i;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys_version"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    invoke-static {v6}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->NetTimeout()Lp/g;

    move-result-object v1

    invoke-virtual {p0}, Li/l;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lp/g;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v1, v1, Lp/g;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_c

    :cond_29
    move v1, v5

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtt"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->NetTimeout()Lp/g;

    move-result-object v1

    invoke-virtual {p0}, Li/l;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lp/g;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v1, v1, Lp/g;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_2a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loss_rate"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    const-string v1, "get_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_e

    :cond_2b
    invoke-virtual {p0}, Lg/i;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg/i;->u()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lp/n$a;->a:Lp/n;

    invoke-virtual {v2, v0, v1}, Lp/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lp/a;->v()V

    goto :goto_e

    :cond_2c
    iget-object v0, p0, Lp/a;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lp/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " don\'t need change key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-object p0
.end method
