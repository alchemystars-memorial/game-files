.class public final Lcom/uqm/crashsight/crashreport/crash/anr/b;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/proguard/ac;


# static fields
.field private static l:Lcom/uqm/crashsight/crashreport/crash/anr/b;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private final d:Lcom/uqm/crashsight/proguard/m;

.field private e:Ljava/lang/String;

.field private final f:Lcom/uqm/crashsight/crashreport/crash/b;

.field private g:Landroid/os/FileObserver;

.field private h:Z

.field private i:Lcom/uqm/crashsight/proguard/ab;

.field private j:I

.field private k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field private m:Z

.field private n:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/proguard/m;Lcom/uqm/crashsight/crashreport/crash/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->h:Z

    iput-boolean p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->m:Z

    const/16 p2, 0xa

    iput p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->n:I

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->b:Landroid/content/Context;

    const-string p2, "crashSight"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->d:Lcom/uqm/crashsight/proguard/m;

    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->f:Lcom/uqm/crashsight/crashreport/crash/b;

    new-instance p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method

.method private a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    :try_start_0
    const-string v0, "[AnrHandler] waiting for process state!"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const-wide/16 v2, 0x1f4

    div-long/2addr p2, v2

    move v0, v1

    :goto_0
    const-string v4, "[AnrHandler] waiting!"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    const-string v6, "[AnrHandler] state info is %s %d"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    aput-object v9, v8, v1

    iget v9, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v6, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v6, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    if-ne v6, v7, :cond_1

    const-string p1, "[AnrHandler] find not responding state!"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v5

    :cond_2
    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/u;->b(J)V

    add-int/lit8 v4, v0, 0x1

    int-to-long v5, v0

    cmp-long v0, v5, p2

    if-ltz v0, :cond_3

    const-string p1, "end!"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "crashSight sdk waitForAnrProcessStateChanged encount error:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    :goto_1
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/crashreport/crash/anr/a;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->k()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->m()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:J

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->t()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->s()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->u()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->q()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/uqm/crashsight/crashreport/crash/c;->e:I

    sget-object v2, Lcom/uqm/crashsight/crashreport/crash/c;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/u;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    const-string v1, "ANR_EXCEPTION"

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    const-string v2, "CS_CR_01"

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-lez v1, :cond_2

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "GET_FAIL"

    :goto_0
    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iget-wide v1, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->c:J

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->b:Ljava/util/Map;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/util/Map;

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    const-string v1, "main(1)"

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->y()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->L()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide v1, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:J

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->b()Z

    move-result p1

    iput-boolean p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->q()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->f:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->c(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()I

    move-result p1

    iput p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:I

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->K()I

    move-result p1

    iput p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:I

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->C()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->H()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:Ljava/util/Map;

    invoke-static {}, Lcom/uqm/crashsight/proguard/r;->a()[B

    move-result-object p1

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Lcom/uqm/crashsight/crashreport/crash/anr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/crash/anr/a;"
        }
    .end annotation

    new-instance p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/anr/a;-><init>()V

    iput-wide p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->c:J

    if-eqz p1, :cond_0

    iget-object p2, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->a:Ljava/lang/String;

    const-string p2, ""

    if-eqz p1, :cond_1

    iget-object p3, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, p2

    :goto_1
    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->f:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p2, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    :cond_2
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->b:Ljava/util/Map;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->g:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "main stack is null , some error may be encountered."

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->g:Ljava/lang/String;

    :cond_5
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    iget-wide p2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->c:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->d:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x2

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->a:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x3

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->g:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x4

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->f:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x5

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->e:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x6

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->b:Ljava/util/Map;

    if-nez p4, :cond_6

    goto :goto_2

    :cond_6
    iget-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/anr/a;->b:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "anr tm:%d\ntr:%s\nproc:%s\nmain stack:%s\nsMsg:%s\n lMsg:%s\n threads:%d"

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/crashreport/crash/anr/b;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/crash/anr/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/anr/b;->l:Lcom/uqm/crashsight/crashreport/crash/anr/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/proguard/m;Lcom/uqm/crashsight/proguard/e;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/CrashSightStrategy$a;)Lcom/uqm/crashsight/crashreport/crash/anr/b;
    .locals 6

    sget-object p4, Lcom/uqm/crashsight/crashreport/crash/anr/b;->l:Lcom/uqm/crashsight/crashreport/crash/anr/b;

    if-nez p4, :cond_0

    new-instance p4, Lcom/uqm/crashsight/crashreport/crash/anr/b;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/crashreport/crash/anr/b;-><init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/proguard/m;Lcom/uqm/crashsight/crashreport/crash/b;)V

    sput-object p4, Lcom/uqm/crashsight/crashreport/crash/anr/b;->l:Lcom/uqm/crashsight/crashreport/crash/anr/b;

    :cond_0
    sget-object p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->l:Lcom/uqm/crashsight/crashreport/crash/anr/b;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/anr/b;)Lcom/uqm/crashsight/proguard/ab;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1, p3, p4, p5, p6}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a(Landroid/content/Context;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Lcom/uqm/crashsight/crashreport/crash/anr/a;

    move-result-object p1

    const/4 p3, 0x0

    new-array p6, p3, [Ljava/lang/Object;

    const-string v0, "found visiable anr , start to upload!"

    invoke-static {v0, p6}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a(Lcom/uqm/crashsight/crashreport/crash/anr/a;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    move-result-object p6

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/c;->q:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v0, p6}, Lcom/uqm/crashsight/crashreport/crash/b;->d(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    iget-wide v0, p6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "backup anr record success!"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "backup anr record fail!"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "crashSight_trace_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ".txt"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p5, 0x3

    invoke-virtual {p4, p5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p4, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iget-object p5, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->a:Ljava/lang/String;

    invoke-static {p2, p4, p5}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "backup trace success"

    invoke-static {p3, p2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->g()Ljava/io/File;

    move-result-object p2

    new-array p4, v7, [Ljava/lang/Object;

    aput-object p2, p4, p3

    const-string p3, "traceFile is %s"

    invoke-static {p3, p4}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/uqm/crashsight/crashreport/crash/anr/a;->g:Ljava/lang/String;

    const-string v1, "ANR"

    const-string v4, "main"

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->f:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {p1, p6}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->f:Lcom/uqm/crashsight/crashreport/crash/b;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p6, p2, p3, v7}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V

    :cond_3
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->f:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {p1, p6}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    return v7
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/anr/b;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "jni_mannual_crashSight_trace_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "main"

    const-string v3, ":"

    const/4 v4, 0x1

    move-object/from16 v5, p0

    invoke-static {v0, v5, v4}, Lcom/uqm/crashsight/crashreport/crash/anr/TraceFileHelper;->readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/uqm/crashsight/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    iget-object v7, v5, Lcom/uqm/crashsight/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    if-eqz v7, :cond_e

    iget-object v7, v5, Lcom/uqm/crashsight/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v0, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v5, Lcom/uqm/crashsight/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "\n\n"

    const-string v9, "\n"

    const-string v10, " :\n"

    const/4 v11, 0x3

    if-eqz v0, :cond_4

    :try_start_3
    array-length v12, v0

    if-lt v12, v11, :cond_4

    aget-object v12, v0, v6

    aget-object v13, v0, v4

    aget-object v0, v0, v7

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\"main\" tid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    :cond_4
    iget-object v0, v5, Lcom/uqm/crashsight/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    array-length v12, v12

    if-lt v12, v11, :cond_6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    aget-object v14, v14, v7

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" tid="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    const/4 v11, 0x3

    goto :goto_0

    :cond_7
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_1
    return v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v8

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    const-string v2, "dump trace fail %s"

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_3
    return v6

    :goto_4
    if-eqz v1, :cond_b

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_5
    throw v2

    :cond_c
    :goto_6
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "backup file create fail %s"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v6

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    new-array v2, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object v1, v2, v4

    const-string v0, "backup file create error! %s  %s"

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v6

    :cond_e
    :goto_7
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string v0, "not found trace dump for %s"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v6
.end method

.method private static b(I)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mMessages"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    const-string p0, "when is zero."

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v6, p0

    const-string p0, "when %d,  time %d, threshold %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v3

    const/4 v1, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {p0, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    cmp-long p0, v4, v6

    if-lez p0, :cond_1

    return v3

    :cond_1
    return v0

    :cond_2
    const-string p0, "Failed to get mMessgae."

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private declared-synchronized c(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->h:Z

    if-eq v0, p1, :cond_0

    const-string v0, "user change anr %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->g:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Ljava/io/File;
    .locals 20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v4, v2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const-string v4, "crashSight_trace_"

    const-string v6, ".txt"

    const/16 v7, 0x11

    array-length v8, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_4

    aget-object v11, v2, v10

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v13, :cond_2

    :try_start_1
    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_2

    invoke-virtual {v12, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v15, v0, v13

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    const-string v7, "current time %d trace time is %d s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v5, v14

    invoke-static {v7, v5}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v5, "current time minus trace time is %d s"

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v7, v9

    invoke-static {v5, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, 0x1e

    cmp-long v5, v15, v12

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    return-object v11

    :catchall_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Trace file that has invalid format: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/16 v7, 0x11

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return-object v1
.end method

.method private declared-synchronized h()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start when started!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "start anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "WatchDog staring..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/ab;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/uqm/crashsight/proguard/ab;

    invoke-direct {v0}, Lcom/uqm/crashsight/proguard/ab;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CrashSight-ThreadMonitor"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->j:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/proguard/ab;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/uqm/crashsight/proguard/ab;->a(Landroid/os/Handler;J)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/proguard/ab;->a(Lcom/uqm/crashsight/proguard/ac;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/ab;->c()Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->d:Lcom/uqm/crashsight/proguard/m;

    new-instance v2, Lcom/uqm/crashsight/crashreport/crash/anr/b$1;

    invoke-direct {v2, p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b$1;-><init>(Lcom/uqm/crashsight/crashreport/crash/anr/b;)V

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    :goto_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/anr/b$2;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e:Ljava/lang/String;

    const/16 v3, 0x100

    invoke-direct {v0, p0, v2, v3}, Lcom/uqm/crashsight/crashreport/crash/anr/b$2;-><init>(Lcom/uqm/crashsight/crashreport/crash/anr/b;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->g:Landroid/os/FileObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    const-string v0, "startWatchingPrivateAnrDir! dumFilePath is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->d:Lcom/uqm/crashsight/proguard/m;

    new-instance v2, Lcom/uqm/crashsight/crashreport/crash/anr/b$3;

    invoke-direct {v2, p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b$3;-><init>(Lcom/uqm/crashsight/crashreport/crash/anr/b;)V

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->g:Landroid/os/FileObserver;

    const-string v2, "startWatchingPrivateAnrDir failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "close when closed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "stop anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "WatchDog stopping..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/ab;->b()Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/ab;->a()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/proguard/ab;->b(Lcom/uqm/crashsight/proguard/ac;)V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->i:Lcom/uqm/crashsight/proguard/ab;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->g:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->g:Landroid/os/FileObserver;

    const-string v0, "close anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    const-string v2, "stop anr monitor failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->n:I

    return-void
.end method

.method public final a(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->d(Z)V

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->f()Z

    move-result p1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e()Z

    move-result v0

    if-eq p1, v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "anr changed to %b"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c(Z)V

    :cond_2
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[processCustomAnr] Receive a custom anr."

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v2, 0x30d40

    :try_start_0
    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/u;->a(IZ)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v9, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "main"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v5, ""

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/uqm/crashsight/proguard/aa;)Z
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/aa;->e()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->b(Landroid/content/Context;)Z

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/aa;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "anr handler onThreadBlock only care main thread ,current thread is: %s"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return v1
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->m:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 11

    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->M()I

    move-result v0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->n:I

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->b(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->M()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "[AnrHandler] Current api level is %d, which is not support isMainThreadStuck check."

    invoke-static {v3, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->m:Z

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    const-wide/16 v5, 0x4e20

    invoke-direct {p0, p1, v5, v6}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v5, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    if-ne v5, v4, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "proc state is unvisiable!"

    invoke-static {v5, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    iget v4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->n:I

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->m:Z

    if-nez v4, :cond_6

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[AnrHandler] Both controllers are close which lead to upload anr."

    invoke-static {v3, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    move v3, v0

    :cond_6
    if-nez v0, :cond_7

    if-nez v3, :cond_7

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "[AnrHandler] This is not a anr."

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v3, 0x30d40

    :try_start_0
    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/u;->a(IZ)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    move-object v10, v0

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "main"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_4
    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b;->k:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v6, ""

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z

    return v1
.end method

.method protected final c()V
    .locals 17

    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/uqm/crashsight/crashreport/crash/c;->g:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/uqm/crashsight/crashreport/crash/anr/b;->e:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v4, v2

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "crashSight"

    const-string v5, "crashSight_trace_"

    const-string v6, ".txt"

    array-length v7, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v9, v7, :cond_5

    aget-object v12, v2, v9

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_1

    const/16 v11, 0x11

    goto :goto_1

    :cond_1
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v11, 0xa

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v8, "Number Trace file : "

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v2

    const/4 v14, 0x0

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v8, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v15, :cond_4

    :try_start_1
    invoke-virtual {v13, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v13, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v13, v0

    if-ltz v2, :cond_3

    goto :goto_2

    :catchall_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Trace file that has invalid format: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v2, v13}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v10, v10, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of overdue trace files that has deleted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_7
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "customer decides whether to open or close."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
