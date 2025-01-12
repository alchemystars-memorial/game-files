.class public abstract Lp/a;
.super Lg/i;


# instance fields
.field public final u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Lp/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/i;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/a;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lp/a;->v:Ljava/lang/String;

    iput-object v0, p0, Lp/a;->w:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lp/a;->x:Lp/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/i;->r:Z

    iput-boolean v0, p0, Lg/i;->s:Z

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->refreshNetToken()V

    return-void
.end method


# virtual methods
.method public n(IILi/l;)V
    .locals 2

    const-string v0, "retry:"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpBase"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->isUseDomainFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->getIPListLength()I

    move-result p1

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_1

    :goto_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->IPManager()Lp/c;

    move-result-object p1

    invoke-virtual {p1}, Lp/c;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->getHost()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p3, Li/l;->h:Li/g;

    if-eqz p2, :cond_2

    iput-object p1, p2, Li/g;->a:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public o()V
    .locals 5

    const-string v0, "NetWorker"

    iget-object v1, p0, Li/l;->h:Li/g;

    const-string v2, "url="

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Li/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onHttpStart"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Li/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x5dc

    :try_start_0
    invoke-static {v2}, Lo/g;->j(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lo/g;->k(Landroid/content/Context;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const-string v2, "wifi"

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v2}, Lo/g;->i(Landroid/content/Context;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_1

    const-string v2, "4g"

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {v2}, Lo/g;->h(Landroid/content/Context;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_2

    const-string v2, "3g"

    goto :goto_0

    :cond_2
    const-string v2, "2g"

    :goto_0
    :try_start_3
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/centauri/oversea/comm/GlobalData;->NetTimeout()Lp/g;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lp/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TimeOutValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "getTimeOut(): "

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/centauri/api/a;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iput v3, p0, Li/l;->l:I

    iput v3, p0, Li/l;->m:I

    return-void
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "get_key"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lp/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|get_key"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/a;->v:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    const-string v1, "overseas_cmd"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getSK()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0, v1, v0}, Lg/i;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "get_key_type"

    const-string v1, "secret"

    invoke-virtual {p0, v0, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->changeVid:Ljava/lang/String;

    const-string v1, "vid"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w()V
    .locals 2

    const-string v0, "amode"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v1, "offer_id"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    const-string v1, "overseas_cmd"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/a;->u:Ljava/lang/String;

    const-string v1, "Setting a empty http url suffix!"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp/a;->u:Ljava/lang/String;

    const-string v1, "Setting a empty http url schema!"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->isUseDomainFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->IPManager()Lp/c;

    move-result-object v0

    invoke-virtual {v0}, Lp/c;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Li/g;

    invoke-direct {v1, p1, v0}, Li/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, v1, Li/g;->b:Ljava/lang/String;

    iput-object v1, p0, Li/l;->h:Li/g;

    iget-object p1, p0, Lp/a;->u:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lp/a;->v:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requestUrl: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
