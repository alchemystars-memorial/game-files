.class public final Lp/j;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# instance fields
.field public final a:Lcom/centauri/oversea/api/ICTINetCallBack;

.field public final b:Ljava/lang/String;

.field public final c:Lp/n;


# direct methods
.method public constructor <init>(Lp/n;Lcom/centauri/oversea/api/ICTINetCallBack;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp/j;->c:Lp/n;

    iput-object p2, p0, Lp/j;->a:Lcom/centauri/oversea/api/ICTINetCallBack;

    iput-object p3, p0, Lp/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lg/h;)V
    .locals 3

    iget-object v0, p0, Lp/j;->c:Lp/n;

    const-string v1, "netFail"

    invoke-static {v0, p1, v1}, Lp/n;->a(Lp/n;Lg/h;Ljava/lang/String;)V

    iget-object v0, p0, Lp/j;->a:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lg/h;->f:Lg/i;

    check-cast v1, Lp/a;

    iget-object v1, v1, Lp/a;->w:Ljava/lang/String;

    iget v2, p1, Lg/h;->a:I

    iget-object p1, p1, Lg/h;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStop(Lg/h;)V
    .locals 2

    iget-object v0, p0, Lp/j;->c:Lp/n;

    const-string v1, "netStop"

    invoke-static {v0, p1, v1}, Lp/n;->a(Lp/n;Lg/h;Ljava/lang/String;)V

    iget-object v0, p0, Lp/j;->a:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lg/h;->f:Lg/i;

    check-cast p1, Lp/a;

    iget-object p1, p1, Lp/a;->w:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lg/h;)V
    .locals 3

    iget-object v0, p0, Lp/j;->c:Lp/n;

    const-string v1, "netSucc"

    invoke-static {v0, p1, v1}, Lp/n;->a(Lp/n;Lg/h;Ljava/lang/String;)V

    iget v0, p1, Lg/h;->a:I

    if-nez v0, :cond_0

    instance-of v1, p1, Lq/i;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ret"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "err_code"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Lq/i;

    iget-object p1, p1, Lq/i;->k:Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lp/j;->a:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lp/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lp/j;->a:Lcom/centauri/oversea/api/ICTINetCallBack;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lp/j;->b:Ljava/lang/String;

    iget-object p1, p1, Lg/h;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/centauri/oversea/api/ICTINetCallBack;->CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
