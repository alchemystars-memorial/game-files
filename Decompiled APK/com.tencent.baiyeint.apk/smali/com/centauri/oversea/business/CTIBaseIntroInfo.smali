.class public abstract Lcom/centauri/oversea/business/CTIBaseIntroInfo;
.super Ljava/lang/Object;


# static fields
.field public static final RET_ERR:I = -0x1

.field public static final RET_OK:I


# instance fields
.field public channel:Ljava/lang/String;

.field public productIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->channel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abstract getIntroInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/InfoCallback;",
            ")V"
        }
    .end annotation
.end method

.method public queryServerInfo(Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 5

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lp/n$a;->a:Lp/n;

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->channel:Ljava/lang/String;

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    new-instance v3, Lcom/centauri/oversea/business/CTIBaseIntroInfo$a;

    invoke-direct {v3, p1}, Lcom/centauri/oversea/business/CTIBaseIntroInfo$a;-><init>(Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lq/h;

    invoke-direct {v2}, Lq/h;-><init>()V

    iput-object v1, v2, Lq/h;->z:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v2, Lq/h;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v1, "release"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string p1, "https"

    const-string v1, "/cgi-bin/iap_query.fcg"

    invoke-virtual {v2, p1, v1}, Lp/a;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cmd"

    const-string v1, "query_user_eligibility"

    invoke-virtual {v2, p1, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "query_type"

    const-string v1, "all"

    invoke-virtual {v2, p1, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v2, Lq/h;->z:Ljava/lang/String;

    const-string v1, "channel"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v1, "offer_id"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v1, "openid"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    const-string v1, "openkey"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    const-string v1, "pf"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    const-string v1, "pfkey"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    iget-object p1, p1, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    const-string v1, "session_type"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "encrypt_msg"

    const-string v1, "0"

    invoke-virtual {v2, p1, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "msg_len"

    invoke-virtual {v2, p1, v1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v2, Lq/h;->y:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lq/h;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "productid"

    invoke-virtual {v2, v1, p1}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, v0, Lp/n;->a:Lg/o;

    new-instance v0, Lq/g;

    invoke-direct {v0, v3}, Lq/g;-><init>(Lg/s;)V

    invoke-virtual {p1, v2, v0}, Lg/o;->a(Lg/i;Lg/h;)V

    return-void

    :cond_4
    :goto_1
    const/4 v0, -0x1

    const-string v1, "queryServerInfo productId is null !!!"

    invoke-interface {p1, v0, v1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    return-void
.end method
