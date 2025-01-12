.class public final Lp/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/n$a;
    }
.end annotation


# instance fields
.field public a:Lg/o;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/o;

    new-instance v1, Lb/a;

    invoke-direct {v1}, Lb/a;-><init>()V

    invoke-direct {v0, v1}, Lg/o;-><init>(Lb/a;)V

    iput-object v0, p0, Lp/n;->a:Lg/o;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->getSK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lg/o;->g:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lp/n;->a:Lg/o;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->getIV()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/o;->h:Ljava/lang/String;

    iget-object v0, p0, Lp/n;->a:Lg/o;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lg/o;->f:Landroid/content/Context;

    iget-object v0, p0, Lp/n;->a:Lg/o;

    new-instance v1, Lq/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lq/e;-><init>(I)V

    iget-object v0, v0, Lg/o;->a:Li/k;

    invoke-virtual {v0, v1}, Li/k;->a(Li/h;)V

    iget-object v0, p0, Lp/n;->a:Lg/o;

    new-instance v1, Lq/e;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lq/e;-><init>(I)V

    iget-object v0, v0, Lg/o;->a:Li/k;

    monitor-enter v0

    :try_start_0
    iget-object v4, v0, Li/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    iget-object v0, p0, Lp/n;->a:Lg/o;

    new-instance v1, Lg/n;

    invoke-direct {v1, v0, v2}, Lg/n;-><init>(Lg/o;I)V

    iget-object v0, v0, Lg/o;->a:Li/k;

    monitor-enter v0

    :try_start_1
    iget-object v4, v0, Li/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    iget-object v0, p0, Lp/n;->a:Lg/o;

    new-instance v1, Lb/a;

    invoke-direct {v1}, Lb/a;-><init>()V

    iput-object v1, v0, Lg/o;->d:Lg/q;

    new-instance v1, Lb/a;

    invoke-direct {v1}, Lb/a;-><init>()V

    iput-object v1, v0, Lg/o;->c:Lg/r;

    new-instance v1, Lq/f;

    invoke-direct {v1}, Lq/f;-><init>()V

    iget-object v0, v0, Lg/o;->a:Li/k;

    invoke-virtual {v0, v1}, Li/k;->b(Li/e;)V

    iget-object v0, p0, Lp/n;->a:Lg/o;

    iget-object v1, v0, Lg/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, v0, Lg/o;->a:Li/k;

    const/4 v4, 0x2

    iput v4, v1, Li/k;->g:I

    iget-boolean v5, v0, Lg/o;->i:Z

    if-eqz v5, :cond_2

    new-instance v5, Lg/k;

    invoke-direct {v5}, Lg/k;-><init>()V

    invoke-virtual {v1, v5}, Li/k;->b(Li/e;)V

    :cond_2
    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v5, Lg/g;

    invoke-direct {v5, v0}, Lg/g;-><init>(Lg/o;)V

    invoke-virtual {v1, v5}, Li/k;->b(Li/e;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v5, Lg/c;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lg/c;-><init>(Lg/o;I)V

    invoke-virtual {v1, v5}, Li/k;->b(Li/e;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v5, Lg/c;

    invoke-direct {v5, v0, v2}, Lg/c;-><init>(Lg/o;I)V

    invoke-virtual {v1, v5}, Li/k;->b(Li/e;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v2, Lg/c;

    invoke-direct {v2, v0, v4}, Lg/c;-><init>(Lg/o;I)V

    invoke-virtual {v1, v2}, Li/k;->b(Li/e;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v2, Lg/c;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v4}, Lg/c;-><init>(Lg/o;I)V

    invoke-virtual {v1, v2}, Li/k;->b(Li/e;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v2, Lg/p;

    invoke-direct {v2}, Lg/p;-><init>()V

    invoke-virtual {v1, v2}, Li/k;->b(Li/e;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v2, Lg/c;

    invoke-direct {v2, v0, v3}, Lg/c;-><init>(Lg/o;I)V

    invoke-virtual {v1, v2}, Li/k;->b(Li/e;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v2, Lg/n;

    invoke-direct {v2, v0, v3}, Lg/n;-><init>(Lg/o;I)V

    invoke-virtual {v1, v2}, Li/k;->a(Li/h;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v2, Lg/e;

    invoke-direct {v2, v0}, Lg/e;-><init>(Lg/o;)V

    invoke-virtual {v1, v2}, Li/k;->a(Li/h;)V

    iget-object v1, v0, Lg/o;->a:Li/k;

    new-instance v2, Lg/d;

    invoke-direct {v2, v0}, Lg/d;-><init>(Lg/o;)V

    monitor-enter v1

    :try_start_2
    iget-object v4, v1, Li/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    iget-object v0, v0, Lg/o;->f:Landroid/content/Context;

    sget-object v1, Lj/b;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "SPUtils"

    const-string v1, "http-core, init context null!"

    :goto_1
    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lj/b;->f:Landroid/content/Context;

    if-nez v0, :cond_4

    const-string v0, "SPUtils"

    const-string v1, "http-core, clear context null!"

    goto :goto_1

    :cond_4
    const-string v1, "CentauriHTTPSP"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2
    sget-object v0, Lj/b;->a:Ljava/lang/String;

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v0, v1}, Lj/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj/b;->b:Ljava/lang/String;

    const-string v1, "AES"

    invoke-static {v0, v1}, Lj/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lp/n;Lg/h;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lg/h;->f:Lg/i;

    check-cast p0, Lp/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&times="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "&retCode="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lg/h;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sdk.comm.net.time"

    invoke-virtual {v0, p1, p0}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lg/s;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lo/b$a;->a:Lo/b;

    invoke-virtual {v1, v0}, Lo/b;->a(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    const-string v4, "report data: "

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkManager"

    invoke-static {v5, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lq/b;

    invoke-direct {v4}, Lq/b;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lq/b;->y:Ljava/lang/String;

    invoke-virtual {v4}, Lq/b;->z()Lq/b;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v5

    iget-boolean v5, v5, Lcom/centauri/oversea/comm/GlobalData;->isSendReport:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lq/b;->z:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    const-string v5, "isNeedReport"

    const-string v6, "needreport"

    invoke-static {v5, v6}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lp/n;->a:Lg/o;

    new-instance v6, Lq/a;

    invoke-direct {v6, p1}, Lq/a;-><init>(Lg/s;)V

    invoke-virtual {v5, v4, v6}, Lg/o;->a(Lg/i;Lg/h;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lp/n;->a:Lg/o;

    iget-object v1, v0, Lg/o;->d:Lg/q;

    if-nez v1, :cond_0

    const-string p1, "NetworkManager"

    const-string p2, "needChangeKey: commonInfoGetter = null"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lg/o;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final d(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/data/CTIPayReceipt;Lg/s;)V
    .locals 2

    new-instance v0, Lq/l;

    invoke-direct {v0}, Lq/l;-><init>()V

    const-string v1, "provide"

    iput-object v1, v0, Lp/a;->v:Ljava/lang/String;

    iput-object p4, v0, Lq/l;->z:Ljava/lang/String;

    iput-object p5, v0, Lq/l;->C:Ljava/lang/String;

    iput-object p7, v0, Lq/l;->F:Ljava/lang/String;

    iput-object p8, v0, Lq/l;->G:Ljava/lang/String;

    const/4 p4, 0x0

    iput-object p4, v0, Lq/l;->H:Ljava/lang/String;

    iput-object p9, v0, Lq/l;->I:Ljava/lang/String;

    iput-boolean p1, v0, Lq/l;->J:Z

    iput-object p3, v0, Lq/l;->Q:Ljava/lang/String;

    iput-object p6, v0, Lq/l;->K:Ljava/lang/String;

    invoke-static {p10}, Lp/o;->a(Ljava/lang/Object;)Lp/o;

    move-result-object p1

    iput-object p1, v0, Lp/a;->x:Lp/o;

    iput-object p11, v0, Lq/l;->L:Lcom/centauri/oversea/data/CTIPayReceipt;

    iput-object p2, v0, Lq/l;->O:Ljava/lang/String;

    invoke-virtual {v0}, Lq/l;->y()Lq/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/q;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lp/n;->a:Lg/o;

    new-instance p2, Lq/k;

    new-instance p3, Lp/l;

    invoke-direct {p3, p0, p12}, Lp/l;-><init>(Lp/n;Lg/s;)V

    invoke-direct {p2, p3}, Lq/k;-><init>(Lg/s;)V

    invoke-virtual {p1, v0, p2}, Lg/o;->a(Lg/i;Lg/h;)V

    return-void
.end method
