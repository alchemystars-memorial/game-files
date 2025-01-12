.class public Lcom/gamesafe/ano/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;ZZZZLjava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/gamesafe/ano/h;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/gamesafe/ano/h;-><init>(Landroid/content/Context;ZZZZLjava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v7, p0, p1}, Lcom/gamesafe/ano/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static a(ZZZZLjava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/gamesafe/ano/f;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/gamesafe/ano/g;->a(Landroid/content/Context;ZZZZLjava/lang/String;)V

    :cond_0
    return-void
.end method
