.class public final Lq/f;
.super Ljava/lang/Object;

# interfaces
.implements Li/e;


# instance fields
.field public final a:Lq/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/f$a;

    invoke-direct {v0}, Lq/f$a;-><init>()V

    iput-object v0, p0, Lq/f;->a:Lq/f$a;

    return-void
.end method


# virtual methods
.method public final a(IILi/l;Li/m;)V
    .locals 0

    return-void
.end method

.method public final b(Li/l;Li/m;)V
    .locals 1

    iget-object p2, p0, Lq/f;->a:Lq/f$a;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "APHttpsIPDirectHandler"

    if-eqz p2, :cond_0

    const-string p2, "On http end, need reset host name verifier and ssl socket factory"

    invoke-static {v0, p2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lq/f;->a:Lq/f$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p2, 0x0

    iput-object p2, p1, Li/l;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object p2, p1, Li/l;->o:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :cond_0
    const-string p1, "On http end, no need reset host name verifier and ssl socket factory"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final c(Li/l;)V
    .locals 3

    const-string v0, "APHttpsIPDirectHandler"

    if-nez p1, :cond_0

    const-string p1, "On http start, null request"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v1, p1, Lp/a;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On http start, type error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Lp/a;

    invoke-virtual {p1}, Li/l;->l()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "On http start, not request with ip, no need to set custom verifier and ssl socket factory"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "On http start, set custom host name verifier and ssl socket factory"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lq/f;->a:Lq/f$a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
