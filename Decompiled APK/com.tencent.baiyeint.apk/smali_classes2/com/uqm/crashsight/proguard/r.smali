.class public final Lcom/uqm/crashsight/proguard/r;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/proguard/r$a;
    }
.end annotation


# static fields
.field public static a:Z = true

.field private static b:Z = true

.field private static c:Ljava/text/SimpleDateFormat; = null

.field private static d:I = 0x7800

.field private static e:Ljava/lang/StringBuilder; = null

.field private static f:Ljava/lang/StringBuilder; = null

.field private static g:Z = false

.field private static h:Lcom/uqm/crashsight/proguard/r$a; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Landroid/content/Context; = null

.field private static l:Ljava/lang/String; = null

.field private static m:Z = false

.field private static n:Z = false

.field private static o:Ljava/util/concurrent/ExecutorService;

.field private static p:I

.field private static final q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/proguard/r;->q:Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/r;->c:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7800

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/uqm/crashsight/proguard/r;->c:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uqm/crashsight/proguard/r;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u0001\r\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/proguard/r;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/uqm/crashsight/proguard/r;->d:I

    if-gez p0, :cond_0

    const/4 p0, 0x0

    sput p0, Lcom/uqm/crashsight/proguard/r;->d:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7800

    if-le p0, v1, :cond_1

    sput v1, Lcom/uqm/crashsight/proguard/r;->d:I

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/uqm/crashsight/proguard/r;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/uqm/crashsight/proguard/r;->m:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    sget-boolean v1, Lcom/uqm/crashsight/proguard/r;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/uqm/crashsight/proguard/r;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/StringBuilder;

    sput-object p0, Lcom/uqm/crashsight/proguard/r;->k:Landroid/content/Context;

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    sput-object v1, Lcom/uqm/crashsight/proguard/r;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    sput-object p0, Lcom/uqm/crashsight/proguard/r;->j:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uqm/crashsight/proguard/r;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/crashSightlog_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uqm/crashsight/proguard/r;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uqm/crashsight/proguard/r;->j:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/uqm/crashsight/proguard/r;->l:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/uqm/crashsight/proguard/r;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 p0, 0x1

    :try_start_2
    sput-boolean p0, Lcom/uqm/crashsight/proguard/r;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/uqm/crashsight/proguard/r;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/uqm/crashsight/proguard/r;->m:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/uqm/crashsight/proguard/r;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/uqm/crashsight/proguard/r;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/uqm/crashsight/proguard/r$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/uqm/crashsight/proguard/r$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()[B
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/proguard/r;->b:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/uqm/crashsight/proguard/r;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsightlog.txt"

    invoke-static {v1, v0, v2}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/proguard/r;->b()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b()[B
    .locals 7

    sget-boolean v0, Lcom/uqm/crashsight/proguard/r;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/uqm/crashsight/proguard/r;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/r$a;->d(Lcom/uqm/crashsight/proguard/r$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/r$a;->a(Lcom/uqm/crashsight/proguard/r$a;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/r$a;->a(Lcom/uqm/crashsight/proguard/r$a;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    sget-object v3, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/r$a;->a(Lcom/uqm/crashsight/proguard/r$a;)Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x7800

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v3, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    sget-object v3, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsightlog.txt"

    invoke-static {v1, v0, v2}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/uqm/crashsight/proguard/r;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/uqm/crashsight/proguard/r;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/proguard/r;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/uqm/crashsight/proguard/r;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, p1, p2, v1, v2}, Lcom/uqm/crashsight/proguard/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/uqm/crashsight/proguard/r;->q:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object p2, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sget p2, Lcom/uqm/crashsight/proguard/r;->d:I

    if-lt p0, p2, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    const-string v1, "\u0001\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p0

    sput-object p0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/uqm/crashsight/proguard/r;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, p1, p2, v1, v2}, Lcom/uqm/crashsight/proguard/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/uqm/crashsight/proguard/r;->q:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object p2, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sget p2, Lcom/uqm/crashsight/proguard/r;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p0, p2, :cond_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    :try_start_3
    sget-boolean p0, Lcom/uqm/crashsight/proguard/r;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 p0, 0x1

    :try_start_5
    sput-boolean p0, Lcom/uqm/crashsight/proguard/r;->g:Z

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    if-nez p0, :cond_2

    new-instance p0, Lcom/uqm/crashsight/proguard/r$a;

    sget-object p2, Lcom/uqm/crashsight/proguard/r;->l:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/uqm/crashsight/proguard/r$a;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/r$a;->a(Lcom/uqm/crashsight/proguard/r$a;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/r$a;->a(Lcom/uqm/crashsight/proguard/r$a;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/r$a;->b(Lcom/uqm/crashsight/proguard/r$a;)J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-lez p0, :cond_4

    :cond_3
    sget-object p0, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/r$a;->c(Lcom/uqm/crashsight/proguard/r$a;)Z

    :cond_4
    :goto_0
    sget-object p0, Lcom/uqm/crashsight/proguard/r;->h:Lcom/uqm/crashsight/proguard/r$a;

    sget-object p2, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/proguard/r$a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    sput-boolean p2, Lcom/uqm/crashsight/proguard/r;->g:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :cond_5
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit p1

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
