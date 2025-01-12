.class public Lcom/gamesafe/ano/n;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/gamesafe/ano/n;


# instance fields
.field public a:Lcom/gamesafe/ano/t$a;

.field private b:Lcom/gamesafe/ano/t;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gamesafe/ano/o;

    invoke-direct {v0, p0}, Lcom/gamesafe/ano/o;-><init>(Lcom/gamesafe/ano/n;)V

    iput-object v0, p0, Lcom/gamesafe/ano/n;->a:Lcom/gamesafe/ano/t$a;

    return-void
.end method

.method public static a()Lcom/gamesafe/ano/n;
    .locals 2

    sget-object v0, Lcom/gamesafe/ano/n;->d:Lcom/gamesafe/ano/n;

    if-nez v0, :cond_1

    const-class v0, Lcom/gamesafe/ano/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/gamesafe/ano/n;->d:Lcom/gamesafe/ano/n;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gamesafe/ano/n;

    invoke-direct {v1}, Lcom/gamesafe/ano/n;-><init>()V

    sput-object v1, Lcom/gamesafe/ano/n;->d:Lcom/gamesafe/ano/n;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/gamesafe/ano/n;->d:Lcom/gamesafe/ano/n;

    return-object v0
.end method

.method static synthetic a(Lcom/gamesafe/ano/n;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/gamesafe/ano/n;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/gamesafe/ano/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/gamesafe/ano/n;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gamesafe/ano/t$a;)V
    .locals 7

    new-instance v6, Lcom/gamesafe/ano/t;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/gamesafe/ano/t;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gamesafe/ano/t$a;)V

    iput-object v6, p0, Lcom/gamesafe/ano/n;->b:Lcom/gamesafe/ano/t;

    invoke-virtual {v6}, Lcom/gamesafe/ano/t;->a()V

    return-void
.end method

.method private a(Lcom/gamesafe/ano/t;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gamesafe/ano/n;->b:Lcom/gamesafe/ano/t;

    if-ne v0, p1, :cond_1

    invoke-virtual {v0}, Lcom/gamesafe/ano/t;->c()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gamesafe/ano/n;->b:Lcom/gamesafe/ano/t;

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/gamesafe/ano/n;->b:Lcom/gamesafe/ano/t;

    invoke-direct {p0, p1}, Lcom/gamesafe/ano/n;->a(Lcom/gamesafe/ano/t;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/gamesafe/ano/n;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    const-string v0, "hnbwjs:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v4, p1, v1

    const/4 v1, 0x2

    aget-object v5, p1, v1

    const/4 v1, 0x4

    aget-object v6, p1, v1

    invoke-static {}, Lcom/gamesafe/ano/f;->j()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p1, "*#07#:bzoXpmmzioVxodqdot avdgzy"

    invoke-static {p1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object v0, p0, Lcom/gamesafe/ano/n;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/gamesafe/ano/n;->a:Lcom/gamesafe/ano/t$a;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/gamesafe/ano/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gamesafe/ano/t$a;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "*#07#:OnnNyfHznnvbzWjs.kvmnzViyNcjr xhy zmm"

    invoke-static {p1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hnbwjs:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/gamesafe/ano/n;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "cdyz_hnbwjs:"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/gamesafe/ano/n;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
