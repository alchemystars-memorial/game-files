.class public final Lp/h;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# instance fields
.field public final a:Lcom/centauri/oversea/newapi/response/NotifyCallback;

.field public final b:Lp/n;


# direct methods
.method public constructor <init>(Lp/n;Lcom/centauri/oversea/newapi/response/NotifyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp/h;->b:Lp/n;

    iput-object p2, p0, Lp/h;->a:Lcom/centauri/oversea/newapi/response/NotifyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lg/h;)V
    .locals 2

    iget-object v0, p0, Lp/h;->b:Lp/n;

    const-string v1, "Fail"

    invoke-static {v0, p1, v1}, Lp/n;->a(Lp/n;Lg/h;Ljava/lang/String;)V

    iget-object p1, p0, Lp/h;->a:Lcom/centauri/oversea/newapi/response/NotifyCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/centauri/oversea/newapi/response/NotifyCallback;->onFinish()V

    :cond_0
    return-void
.end method

.method public final onStop(Lg/h;)V
    .locals 2

    iget-object v0, p0, Lp/h;->b:Lp/n;

    const-string v1, "Stop"

    invoke-static {v0, p1, v1}, Lp/n;->a(Lp/n;Lg/h;Ljava/lang/String;)V

    iget-object p1, p0, Lp/h;->a:Lcom/centauri/oversea/newapi/response/NotifyCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/centauri/oversea/newapi/response/NotifyCallback;->onFinish()V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lg/h;)V
    .locals 2

    iget-object v0, p0, Lp/h;->b:Lp/n;

    const-string v1, "Succ"

    invoke-static {v0, p1, v1}, Lp/n;->a(Lp/n;Lg/h;Ljava/lang/String;)V

    iget-object p1, p0, Lp/h;->a:Lcom/centauri/oversea/newapi/response/NotifyCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/centauri/oversea/newapi/response/NotifyCallback;->onFinish()V

    :cond_0
    return-void
.end method
