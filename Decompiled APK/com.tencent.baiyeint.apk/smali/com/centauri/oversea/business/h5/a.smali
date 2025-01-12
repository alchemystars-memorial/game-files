.class public final Lcom/centauri/oversea/business/h5/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/a$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/centauri/oversea/business/h5/b;

.field public c:Lcom/centauri/oversea/business/h5/a$c;

.field public d:Lcom/centauri/oversea/business/h5/a$a;

.field public e:Lcom/centauri/oversea/business/h5/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/a;->b:Lcom/centauri/oversea/business/h5/b;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/a;->c:Lcom/centauri/oversea/business/h5/a$c;

    new-instance v0, Lcom/centauri/oversea/business/h5/a$a;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/a$a;-><init>(Lcom/centauri/oversea/business/h5/a;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/a;->d:Lcom/centauri/oversea/business/h5/a$a;

    new-instance v0, Lcom/centauri/oversea/business/h5/a$b;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/a$b;-><init>(Lcom/centauri/oversea/business/h5/a;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/a;->e:Lcom/centauri/oversea/business/h5/a$b;

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/a;->a:Landroid/content/Context;

    const-class v2, Lcom/centauri/oversea/business/h5/WebService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/a;->d:Lcom/centauri/oversea/business/h5/a$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public final b(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/a;->b:Lcom/centauri/oversea/business/h5/b;

    const-string v1, "AIDLHandler"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/oversea/business/h5/b;->a(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "onResponse Exception: "

    invoke-static {p2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "webInterface is null"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
