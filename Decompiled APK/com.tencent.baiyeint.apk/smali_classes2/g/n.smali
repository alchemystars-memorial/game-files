.class public final Lg/n;
.super Ljava/lang/Object;

# interfaces
.implements Li/h;


# instance fields
.field public final a:I

.field public b:Lg/o;


# direct methods
.method public synthetic constructor <init>(Lg/o;I)V
    .locals 0

    iput p2, p0, Lg/n;->a:I

    iput-object p1, p0, Lg/n;->b:Lg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/l;Li/m;)Li/m;
    .locals 4

    iget v0, p0, Lg/n;->a:I

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    instance-of v0, p1, Lg/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lg/i;

    if-eqz p2, :cond_3

    iget-object v0, p2, Li/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p2, Li/m;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lg/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NeedChangeKey|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "APEndGetKeyInterceptor"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/n;->b:Lg/o;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lg/i;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg/i;->u()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lg/n;->b:Lg/o;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v2, Lg/o;->b:Lh/a;

    invoke-virtual {v2, v3, v1, v0}, Lh/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    instance-of v0, p1, Lp/a;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lp/a;

    invoke-virtual {v0}, Lp/a;->v()V

    iget-object v0, p0, Lg/n;->b:Lg/o;

    invoke-virtual {v0, p1}, Lg/o;->b(Lg/i;)Li/m;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p2

    :cond_4
    iget-object p1, p0, Lg/n;->b:Lg/o;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p1, Lg/o;->f:Landroid/content/Context;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :cond_8
    :goto_1
    if-nez v0, :cond_9

    const/16 p1, 0x4e26

    const-string p2, "The network is not connected, please check"

    invoke-static {p1, p2}, Lg/j;->a(ILjava/lang/String;)Li/m;

    move-result-object p2

    const/4 p1, 0x1

    iput-boolean p1, p2, Li/m;->e:Z

    :cond_9
    :goto_2
    return-object p2
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "order"

    const-string v1, "provide"

    const-string v2, "get_ip"

    const-string v3, "get_key"

    const-string v4, "info"

    filled-new-array {p1, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ret"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x446

    if-eq v3, v4, :cond_0

    const/16 v4, 0x44b

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
