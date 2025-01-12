.class Lcom/gamesafe/ano/e;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/gamesafe/ano/d;

    invoke-direct {v1}, Lcom/gamesafe/ano/d;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    const-string v1, "ZSXZKODJI:XMZOVZ_DIAJ_MZKJMO_JWE"

    invoke-static {v1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gamesafe/ano/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v1, p1}, Lcom/gamesafe/ano/d;->a(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    goto :goto_1

    :catchall_2
    :try_start_3
    const-string p1, "ZSXZKODJI:DIDO_DIAJ_MZKJMO_JWE"

    invoke-static {p1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/b;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :goto_1
    :try_start_4
    invoke-virtual {v0, p2}, Lcom/gamesafe/ano/d;->a(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_4
    :try_start_5
    const-string p1, "ZSXZKODJI:MZKJMO_YZQDXZN_DIAJ"

    invoke-static {p1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/b;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    :goto_2
    return-void
.end method
