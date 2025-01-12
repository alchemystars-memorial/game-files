.class public Lcom/gamesafe/ano/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gamesafe/ano/k;


# static fields
.field private static volatile d:Lcom/gamesafe/ano/r;


# instance fields
.field private a:Lcom/gamesafe/ano/k;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gamesafe/ano/r;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesafe/ano/r;->c:Z

    :try_start_0
    const-string v0, "com.gamesafe.ano.SMI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesafe/ano/k;

    iput-object v0, p0, Lcom/gamesafe/ano/r;->a:Lcom/gamesafe/ano/k;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "com.gamesafe.ano.SMI NOT found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesafe/ano/r;->a:Lcom/gamesafe/ano/k;

    :goto_0
    invoke-direct {p0}, Lcom/gamesafe/ano/r;->b()V

    invoke-direct {p0}, Lcom/gamesafe/ano/r;->c()V

    return-void
.end method

.method public static a()Lcom/gamesafe/ano/r;
    .locals 2

    sget-object v0, Lcom/gamesafe/ano/r;->d:Lcom/gamesafe/ano/r;

    if-nez v0, :cond_1

    const-class v0, Lcom/gamesafe/ano/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/gamesafe/ano/r;->d:Lcom/gamesafe/ano/r;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gamesafe/ano/r;

    invoke-direct {v1}, Lcom/gamesafe/ano/r;-><init>()V

    sput-object v1, Lcom/gamesafe/ano/r;->d:Lcom/gamesafe/ano/r;

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
    sget-object v0, Lcom/gamesafe/ano/r;->d:Lcom/gamesafe/ano/r;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/lit8 v3, v3, 0x2a

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .locals 2

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lcom/gamesafe/ano/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/gamesafe/ano/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/gamesafe/ano/r;->b:Z

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x63t
        0x59t
        0x6ft
        0x44t
        0x4bt
        0x48t
        0x46t
        0x4ft
        0x4et
        0x75t
        0x1bt
        0x10t
        0x4bt
        0x46t
        0x46t
        0x45t
        0x5dt
        0x75t
        0x59t
        0x4ft
        0x44t
        0x59t
        0x43t
        0x5et
        0x43t
        0x5ct
        0x4ft
    .end array-data
.end method

.method private c()V
    .locals 2

    const-string v0, "IsEnabled_1:is_mtp"

    invoke-static {v0}, Lcom/gamesafe/ano/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/gamesafe/ano/r;->c:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getBrand(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/gamesafe/ano/r;->a:Lcom/gamesafe/ano/k;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/gamesafe/ano/r;->b:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/gamesafe/ano/k;->getBrand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "NotImp"

    return-object p1
.end method

.method public getInstalledApkInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/gamesafe/ano/r;->a:Lcom/gamesafe/ano/k;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/gamesafe/ano/r;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/gamesafe/ano/r;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/gamesafe/ano/k;->getInstalledApkInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getRunningServiceInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/gamesafe/ano/r;->a:Lcom/gamesafe/ano/k;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/gamesafe/ano/r;->b:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/gamesafe/ano/k;->getRunningServiceInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
