.class public final Lcom/uqm/crashsight/crashreport/common/info/c;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Lcom/uqm/crashsight/crashreport/common/info/c;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/uqm/crashsight/proguard/q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->b:I

    const/high16 v0, 0x1e00000

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->d:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    return-void
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/crashreport/common/info/c;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/common/info/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/c;->a:Lcom/uqm/crashsight/crashreport/common/info/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uqm/crashsight/crashreport/common/info/c;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/common/info/c;-><init>()V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/c;->a:Lcom/uqm/crashsight/crashreport/common/info/c;

    :cond_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/c;->a:Lcom/uqm/crashsight/crashreport/common/info/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/uqm/crashsight/crashreport/common/info/a;)V
    .locals 4

    const-class v0, Lcom/uqm/crashsight/crashreport/common/info/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/c;->a:Lcom/uqm/crashsight/crashreport/common/info/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uqm/crashsight/crashreport/common/info/c;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/common/info/c;-><init>()V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/c;->a:Lcom/uqm/crashsight/crashreport/common/info/c;

    :cond_0
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/c;->a:Lcom/uqm/crashsight/crashreport/common/info/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/app_crashSight/attachCached"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/uqm/crashsight/crashreport/common/info/c;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/io/File;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/io/File;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    const-string v2, "[attach][zipCsFile]\ncsFilePath[%s]\ncsZipFilePath[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x20000

    invoke-static {p1, v2, v1, p2}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/io/File;Ljava/io/File;ILcom/uqm/crashsight/crashreport/common/info/b;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "[attach][zipCsFile] failed delete file [%s]"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    iget-object p1, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(I)V
    .locals 0

    monitor-enter p0

    shl-int/lit8 p1, p1, 0xa

    shl-int/lit8 p1, p1, 0xa

    :try_start_0
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->b:I

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[attach] attachmentPath has been overwrite with:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "bucket"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "region"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "domain"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "tmpSecretId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "tmpSecretKey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "sessionToken"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v1, Lcom/uqm/crashsight/proguard/q;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/q;-><init>()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    const-string v2, "bucket"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    const-string v2, "region"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    const-string v2, "domain"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/q;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    const-string v2, "tmpSecretId"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/q;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    const-string v2, "tmpSecretKey"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/q;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    const-string v2, "sessionToken"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/q;->f:Ljava/lang/String;

    const-string v1, "expiration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    const-string v2, "startTime"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/q;->g:J

    :cond_2
    const-string v1, "expiredTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;

    const-string v2, "expiredTime"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/q;->h:J

    :cond_3
    const-string v1, "serverTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "serverTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_0
    :try_start_1
    const-string p1, "[attach]token field is empty"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :goto_1
    :try_start_2
    const-string p1, "[attach] update token failed: map is empty"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v1, "[attach]update token failed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach_single_up_record_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x3ec

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/uqm/crashsight/proguard/e;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/d;Z)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string p1, "[attach][single] save attach up record success, key=[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v0

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string p1, "[attach][single] save attach up record  failed, key=[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v0

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(I)V
    .locals 0

    monitor-enter p0

    shl-int/lit8 p1, p1, 0xa

    shl-int/lit8 p1, p1, 0xa

    :try_start_0
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(I)[Ljava/lang/String;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->f:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/c$1;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/c$1;-><init>(Lcom/uqm/crashsight/crashreport/common/info/c;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    move v4, v3

    :goto_1
    if-ge v4, p1, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2
    if-lt v5, p1, :cond_4

    if-lez v4, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[attach] delete old record:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    monitor-exit p0

    return-object v1

    :cond_6
    :goto_3
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->c:I

    return v0
.end method

.method public final declared-synchronized e(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/16 v4, 0x3ec

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v0, v5}, Lcom/uqm/crashsight/proguard/e;->a(ILcom/uqm/crashsight/proguard/d;Z)Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "attach_up_record_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_1

    sget-object v9, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v8, v9}, Lcom/uqm/crashsight/proguard/u;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    if-eqz v8, :cond_1

    const-string v9, "[attach] loaded attach up record, key=[%s]"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v7, v10, v4

    invoke-static {v9, v10}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->d()V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->f:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v7, v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "[attach] load up records [%d]"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v6, 0x5

    if-eqz v1, :cond_5

    array-length v7, v1

    move v8, v4

    move v9, v6

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v10, v1, v8

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    if-lez v9, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "[attach] success delete dirty file [%s]"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v4

    invoke-static {v11, v12}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v11, "[attach] failed delete dirty file [%s]"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v4

    invoke-static {v11, v12}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, -0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    monitor-exit p0

    return-object v2

    :cond_6
    :try_start_2
    new-instance v1, Lcom/uqm/crashsight/crashreport/common/info/c$2;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/common/info/c$2;-><init>(Lcom/uqm/crashsight/crashreport/common/info/c;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget v8, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->n:I

    if-ge v8, v6, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x240c8400

    cmp-long v8, v8, v10

    if-gtz v8, :cond_8

    iget-wide v8, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:J

    iget v10, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->c:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_8

    iget-wide v8, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/c;->d()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    goto :goto_4

    :cond_7
    iget v8, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->n:I

    add-int/2addr v8, v5

    iput v8, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->n:I

    invoke-virtual {v7}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, p1, :cond_9

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    :goto_6
    if-ltz p1, :cond_b

    if-lez v6, :cond_b

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_b
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_c
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Lcom/uqm/crashsight/proguard/q;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/c;->h:Lcom/uqm/crashsight/proguard/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/uqm/crashsight/proguard/e;->a(ILcom/uqm/crashsight/proguard/d;Z)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "attach_up_time_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_3

    sget-object v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/u;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v8

    iget v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    invoke-virtual {v8, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-virtual {v8, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setRetCode(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-object v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, ""

    goto :goto_1

    :cond_1
    iget-object v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setRetMsg(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-wide v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    invoke-virtual {v8, v9, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setAttachSize(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-wide v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    invoke-virtual {v8, v9, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setZipAttachSize(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-object v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    invoke-static {v9}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, ""

    goto :goto_2

    :cond_2
    iget-object v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    :goto_2
    invoke-virtual {v8, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setNetworkType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-wide v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    iget-wide v11, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setTotalTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-wide v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    iget-wide v11, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setCopyTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-wide v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    iget-wide v11, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setZipTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-wide v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    iget-wide v11, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setUploadTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-wide v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    iget-wide v11, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setDeleteTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    iget-object v9, v7, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setExpUid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "[attach] loaded up time, key=[%s]"

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b()V

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v2, v4}, Lcom/uqm/crashsight/proguard/e;->a(ILjava/lang/String;Lcom/uqm/crashsight/proguard/d;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Lcom/uqm/crashsight/proguard/e;->a(ILcom/uqm/crashsight/proguard/d;Z)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "attach_single_up_record_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    if-eqz v9, :cond_1

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "[attach][single] loaded attach up record, key=[%s] expUid=[%s]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v6

    aput-object v10, v11, v4

    invoke-static {v9, v11}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v7, "[attach][single] load up records [%d]"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_3

    const/4 v7, 0x5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v3, v8, v1, v6}, Lcom/uqm/crashsight/proguard/e;->a(ILjava/lang/String;Lcom/uqm/crashsight/proguard/d;Z)Z

    const-string v9, "[attach][single] delete old record [%s]"

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v6

    invoke-static {v9, v10}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_3

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
