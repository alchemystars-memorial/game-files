.class public final Lcom/uqm/crashsight/crashreport/common/info/f;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static d:Lcom/uqm/crashsight/crashreport/common/info/f;


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private e:Lcom/uqm/crashsight/crashreport/a;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->e:Lcom/uqm/crashsight/crashreport/a;

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->f:Z

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->g:Z

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/crashreport/common/info/f;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/f;->d:Lcom/uqm/crashsight/crashreport/common/info/f;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/uqm/crashsight/crashreport/a;)V
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/common/info/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/f;->d:Lcom/uqm/crashsight/crashreport/common/info/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uqm/crashsight/crashreport/common/info/f;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/common/info/f;-><init>()V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/f;->d:Lcom/uqm/crashsight/crashreport/common/info/f;

    iput-object p0, v1, Lcom/uqm/crashsight/crashreport/common/info/f;->e:Lcom/uqm/crashsight/crashreport/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized d()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->f:Z

    if-nez v1, :cond_0

    const-string v1, "has not received cloud strategy, just cache"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->e:Lcom/uqm/crashsight/crashreport/a;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/uqm/crashsight/crashreport/a;->updateAppState(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "update oom info manager error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "recordedBootTime"

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "isAppForegroundLast"

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isCrashCaught"

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "oom info to json error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oom info manager setAppForegroundLast:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->b:Z

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "oom info manager is reset"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->f:Z

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "reset oom info manager error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->c:Z

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/f;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "oom info manager is loaded"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->g:Z

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/f;->e:Lcom/uqm/crashsight/crashreport/a;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/uqm/crashsight/crashreport/a;->readAppState()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OomInfoManager load:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "isAppForegroundLast"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "isCrashCaught"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "load oom info error"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method
