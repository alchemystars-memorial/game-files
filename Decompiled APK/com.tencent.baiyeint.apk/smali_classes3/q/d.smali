.class public final Lq/d;
.super Lp/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(IILi/l;)V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 5

    sget-object v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->b:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    sget-object v2, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->b:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    sget-object v2, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->b:Ljava/lang/String;

    const-string v4, "http"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x6

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v3, "test"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Li/g;

    invoke-direct {v2, v1, v0}, Li/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Li/g;

    invoke-direct {v2, v1, v0}, Li/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "/region"

    iput-object v0, v2, Li/g;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Li/l;->r(Li/g;)V

    return-void
.end method

.method public final z()V
    .locals 2

    invoke-virtual {p0}, Lq/d;->y()V

    invoke-super {p0}, Lp/a;->w()V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v1, "openid"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v1, "offerid"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    const-string v1, "zoneid"

    invoke-virtual {p0, v1, v0}, Li/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
