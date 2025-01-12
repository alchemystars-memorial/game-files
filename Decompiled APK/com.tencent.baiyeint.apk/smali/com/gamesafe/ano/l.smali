.class Lcom/gamesafe/ano/l;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "i_beg"

    invoke-static {v0}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/gamesafe/ano/l;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gamesafe/ano/l;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string p0, "i_end"

    invoke-static {p0}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 5

    invoke-static {}, Lcom/gamesafe/ano/r;->a()Lcom/gamesafe/ano/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gamesafe/ano/r;->getInstalledApkInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/gamesafe/ano/j;

    invoke-direct {v2, p0, v1}, Lcom/gamesafe/ano/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gamesafe/ano/j;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moduls="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|name="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lcom/gamesafe/ano/l;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    sput-wide v0, Lcom/gamesafe/ano/l;->a:J

    invoke-static {}, Lcom/gamesafe/ano/r;->a()Lcom/gamesafe/ano/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gamesafe/ano/r;->getInstalledApkInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "vkf_ivhz="

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "|vkf_kvoc="

    invoke-static {v1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "|dn_ntn="

    invoke-static {v2}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "|dn_zso="

    invoke-static {v3}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    const-string v7, "1"

    const-string v8, "0"

    if-lez v6, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gamesafe/ano/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method
