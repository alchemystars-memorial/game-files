.class public final Lg/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:Li/k;

.field public final b:Lh/a;

.field public c:Lg/r;

.field public d:Lg/q;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Landroid/content/Context;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>(Lb/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lg/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/o;->i:Z

    new-instance p1, Li/k;

    invoke-direct {p1}, Li/k;-><init>()V

    iput-object p1, p0, Lg/o;->a:Li/k;

    new-instance p1, Lh/a;

    invoke-direct {p1}, Lh/a;-><init>()V

    iput-object p1, p0, Lg/o;->b:Lh/a;

    return-void
.end method


# virtual methods
.method public final a(Lg/i;Lg/h;)V
    .locals 3

    iput-object p1, p2, Lg/h;->f:Lg/i;

    iget-object v0, p0, Lg/o;->a:Li/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li/d;

    invoke-direct {v1, v0, p1}, Li/d;-><init>(Li/k;Li/l;)V

    iget-object p1, v0, Li/k;->d:Li/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Li/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Li/d$a;-><init>(Li/d;Li/a;Z)V

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Li/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final b(Lg/i;)Li/m;
    .locals 2

    iget-object v0, p0, Lg/o;->a:Li/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li/d;

    invoke-direct {v1, v0, p1}, Li/d;-><init>(Li/k;Li/l;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Li/d;->a(Z)Li/m;

    move-result-object p1

    return-object p1
.end method

.method public final c(Li/l;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lg/i;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lg/i;

    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lg/o;->b:Lh/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v1, "4.06.081"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v0, p2, p3}, Lh/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, p3}, Lh/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, p3}, Lh/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_4
    invoke-virtual {v0, p1, p2, p3}, Lh/a;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "_"

    const-string v5, ""

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0, p1, p2, p3}, Lh/a;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_CryptEncodeKey"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lh/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v6, v5

    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v3, v5

    goto :goto_1

    :cond_9
    invoke-static {v6, v3}, Lb/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_2
    move-object v3, v5

    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_3

    :cond_d
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_CryptEncodeKeyTime"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lh/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0, p2, p3, v2}, Lh/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3, v3}, Lh/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3, v5}, Lh/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_4
    const/4 p1, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    invoke-virtual {v0, p1, p2, p3}, Lh/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :goto_6
    return p1
.end method
