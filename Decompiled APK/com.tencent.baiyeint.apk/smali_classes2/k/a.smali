.class public final Lk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# instance fields
.field public final a:Lk/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lk/c$b;->a:Lk/c;

    iput-object v0, p0, Lk/a;->a:Lk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lk/a;->a:Lk/c;

    iget-object v0, v0, Lk/c;->f:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lk/a;->a:Lk/c;

    iget-object p1, p1, Lk/c;->d:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lk/a;->a:Lk/c;

    iget-object p1, p1, Lk/c;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/centauri/oversea/data/RestoreItem;

    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " start reProvide."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "APPayManager"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/centauri/oversea/data/RestoreItem;->restore:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p0}, Lcom/centauri/oversea/business/CTIBaseRestore;->restore(Landroid/content/Context;Ljava/lang/String;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lk/a;->a:Lk/c;

    const/4 p2, 0x0

    iput-object p2, p1, Lk/c;->d:Ljava/util/LinkedList;

    iget-boolean p2, p1, Lk/c;->c:Z

    if-nez p2, :cond_2

    invoke-static {p1}, Lk/c;->a(Lk/c;)V

    :cond_2
    :goto_0
    return-void
.end method
